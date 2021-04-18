module MB128 (
	input		clk_sys,	// system clock
	input wire	reset_n,	// reset - active low

	input  i_Clk,			// Joypad Clr/Reset line, clocks the SPI-like MB128 protocol 
	input  i_Data,			// Joypad Sel line, provides data to the SPI-like MB128 protocol

	output o_Active,
    output o_Data,
    output o_Ident,

	output o_ReadLED,
	output o_WriteLED,

	output sp_cs_n,
	output sp_clk,
	input  sp_miso,
	output sp_mosi,
	output sp_hold_n,

//TODO: REMOVE clk_Sample; replace with clk_debounce
//
	output clk_sample,
	output [5:0] clk_samplediv

);


// TODO: change SPI memory write-unlock to 0.5 second delay ?
// TODO: change SPI memory write-unlock to every transaction during address ?
//
//  parameter   STARTUP_DELAY		= 24'h10;	// up-counter after initialization; 1/2 second
 
  parameter   SPI_READ_CMD		= 8'h3;
  parameter   SPI_WRITE_CMD		= 8'h2;
  parameter   SPI_WREN_CMD		= 8'h6;

// == THIS IS VALIDATED (FROM HERE) == //

  // constants - first, STATEs
  // STATE GROUP 1 - Request identification
  parameter   STATE_IDLE         = 4'b0000;
  parameter   STATE_A8_A1        = 4'b0001;
  parameter   STATE_A8_A2        = 4'b0010;
  // STATE GROUP 2 - Synced; request information
  parameter   STATE_REQ          = 4'b0011;
  parameter   STATE_ADDR         = 4'b0100;
  parameter   STATE_LENBITS      = 4'b0101;
  parameter   STATE_LENBYTES     = 4'b0110;
  // STATE GROUP 3 - Synced; in-transfer states
  parameter   STATE_READ         = 4'b0111;
  parameter   STATE_READBITS     = 4'b1000;
  parameter   STATE_READ_TRAIL   = 4'b1001;
  parameter   STATE_WRITE        = 4'b1010;
  parameter   STATE_WRITEBITS    = 4'b1011;
  parameter   STATE_WRITE_TRAIL  = 4'b1100;
  // STATE FINAL - ERROR
  parameter   STATE_ERROR        = 4'b1111;
  
  parameter   CMD_WRITE          = 1'b0;
  parameter   CMD_READ           = 1'b1;

  // registers
  reg			i_Clk_Prev		= 1'b0;
  reg			i_Clk_Debounce	= 1'b0;
  reg [29:0]	i_Clk_ShiftReg	= 30'b000000_00000000_00000000_00000000;

//
// TODO: REMOVE SAMPLE_FREQ and replacee with debouncer
//
//  parameter  SAMPLE_FREQ   = 5'b01000;		// divide clock by 8  (19/8 = 2.375MHz)
  parameter  SAMPLE_FREQ   = 5'b00010;		// divide clock by 8  (19/8 = 2.375MHz)
  
  reg        clk_sample    = 1'b0;
  reg [5:0] clk_samplediv = SAMPLE_FREQ;




  reg [3:0]  r_State            = STATE_IDLE;
  reg [3:0]  r_State_Prev       = STATE_IDLE;
  reg [7:0]  r_Register         = 8'b0;
  reg         r_Req              = CMD_READ;
//  reg         r_Pos_Active       = 1'b0;
//  reg         r_Neg_Active       = 1'b0;
  reg         r_Active           = 1'b0;
  reg         r_Stop_Active      = 1'b0;

//
//NOTE: TRIGGER_WRENABLE NOW DONE WHEN GETTING ADDRESS INPUT DURING WRITE TRANSACTION
//-----------------------------------------------------------------------------------
//  reg [23:0]  r_Startup_Count    = 24'b00_0000_0000_0000_0000;

  reg [5:0]  r_Bit_Count        = 6'b000000;
  reg [16:0] r_MB128_Addr       = 17'b00000000000000000;
  reg [16:0] r_MB128_Addr_Curr  = 17'b00000000000000000;
  reg [16:0] r_MB128_Bytes      = 17'b00000000000000000;
  reg [2:0]  r_MB128_Bits       = 3'b000;
  reg [3:0]  r_Pos_Edge         = 4'b0000;
  reg [3:0]  r_Neg_Edge         = 4'b0000;

// == THIS IS VALIDATED (TO HERE) == //

  reg [7:0]  r_Read_Byte        = 8'b00000000;
  reg [7:0]  r_Write_Byte       = 8'b00000000;
  reg [7:0]  r_FetchWrite_Byte  = 8'b00000000;
  
  //Visualization registers:
  reg   r_StateAddr        = 1'b0;
  reg   r_StateLenBits     = 1'b0;
  reg   r_StateLenBytes    = 1'b0;
  reg   r_StateReadByte    = 1'b0;
  reg   r_StateReadBit     = 1'b0;
  reg   r_StateReadTrail   = 1'b0;
  reg   r_StateWriteByte   = 1'b0;
  reg   r_StateWriteBit    = 1'b0;
  reg   r_StateWriteTrail  = 1'b0;
  
  reg   o_ReadLED			= 1'b0;
  reg   o_WriteLED			= 1'b0;

  reg   trigger_read		= 1'b0;
  reg   trigger_write		= 1'b0;
  reg   trigger_fetchwrite	= 1'b0;			// on a partial byte write, this is the fetch-before-alter
  reg   trigger_wren		= 1'b0;

  reg [7:0] ram_data		= 1'b0;



//  reg [31:0] led_timer = 8'h00000000;

  reg  [5:0] cmd_len = 6'b100000;  // 32;
  reg  [4:0] rw_len = 5'b01000;  // 8
  reg  [31:0] cmd_buf = 32'b00000011_00000000_00000000_00000000; // = { SPI 3 = READ; 24 bit addr = 0 };
  reg  [15:0] rd_buf = 16'b00000000;
  reg  [15:0] wr_buf = 16'b00000000;
  reg  sp_go   = 0;
//  reg  [7:0] addr   = 8'b00000001;


  reg  [7:0]  spi_cmd = 0;
  reg  [23:0] spi_addr = 0;
  reg  [7:0]  spi_dataout = 0;


  reg init = 0;
  reg [1:0] sp_phase = 2'b00;
  reg sp_clk = 0;
  reg sp_cs_n = 1;
  reg sp_hold_n = 0;
  reg sp_active = 0;
  reg sp_end_desel = 0;
  reg sp_mosi = 0;
  reg read_in_transit = 0;
  reg write_in_transit = 0;
  reg fetchwrt_in_transit = 0;

  
//  always @(posedge clk)
//	begin
//		led_timer <= led_timer[30:0] +2;
//	end
//

// TODO: validate that all appropriate registers are reset at RESET and transition back to STATE_IDLE
//
  always @(posedge clk_sys)
	begin

	  if (~reset_n) begin
//		r_Startup_Count    <= 24'b0;
		r_State            <= STATE_IDLE;
		r_MB128_Addr       <= 17'b00000000000000000;
		r_MB128_Addr_Curr  <= 17'b00000000000000000;
		r_MB128_Bytes      <= 17'b00000000000000000;
		r_MB128_Bits       <= 3'b000;
		r_Bit_Count        <= 6'b000000;
		r_Register         <= 8'b00000000;
		r_Active           <= 1'b0;
		r_Stop_Active      <= 1'b0;
		r_Pos_Edge         <= 4'b0000;
		r_Neg_Edge         <= 4'b0000;
		o_ReadLED          <= 1'b0;
	    o_WriteLED         <= 1'b0;

		trigger_read       <= 1'b0;
		trigger_write      <= 1'b0;
		trigger_fetchwrite <= 1'b0;
		ram_data           <= 8'b00000000;
//		wren_a            <= 1'b0;
	  end


//
//NOTE: TRIGGER_WRENABLE NOW DONE WHEN GETTING ADDRESS INPUT DURING WRITE TRANSACTION
//-----------------------------------------------------------------------------------
//	r_Startup_Count <= r_Startup_Count + 1;
	
	i_Clk_ShiftReg <= {i_Clk_ShiftReg[28:0], i_Clk };

	if (i_Clk_ShiftReg == 30'b000000_00000000_00000000_00000000)
		i_Clk_Debounce <= 0;

	if (i_Clk_ShiftReg == 30'b111111_11111111_11111111_11111111)
		i_Clk_Debounce <= 1;
	
// take a sample of the joypad port every (SAMPLE_FREQ)'th cycle
//	clk_sample <= 1'b0;
//	if (clk_samplediv == 5'b0)
//	  begin
//		clk_sample <= 1'b1;
//		clk_samplediv <= SAMPLE_FREQ;
//	  end
//	else
//	  clk_samplediv <= clk_samplediv - 1;


////////////////////////////////////
// Go to read/write the SPI memory:
////////////////////////////////////


//NOTES FOR FIXING:
// document sense of each register; invocation sequence
//
// from point of view of MB128, read is caused by:
//     MB128_Curr_Addr is set + trigger_read = 1
//
// from point of view of below, read is triggered by:
//		rd_buf = 8'b0;
//		cmd_buf[31:24] = 8'b00000011;
//      cmd_buf[23:0] = 8'b0000000 + mb128_curr_addr;
//		cmd_len = 32
//		rw_len = 8;
//		sp_end_desel = 1;
//		sp_go = 1;
//
//


//
//NOTE: TRIGGER_WRENABLE NOW DONE WHEN GETTING ADDRESS INPUT DURING WRITE TRANSACTION
//-----------------------------------------------------------------------------------
//
//
//		if (!init && (r_Startup_Count > STARTUP_DELAY))	// unlock write at beginning
		if (!init)
		  begin
			sp_cs_n			<= 1'b1;
			sp_hold_n		<= 1'b0;
			init			<= 1'b1;
//			addr[7:0]		<= 1'b1;
//
////			cmd_buf[31:24]	<= 8'b00000011; // _00000000_00000000_00000000;
////			cmd_len			<= 32;
////			wr_buf[7:0]		<= 8'b00000000;
////			rw_len			<= 8;
			spi_cmd			<= 0;
			spi_addr		<= 24'b0;
			spi_dataout		<= 8'b00000000;

//			cmd_buf[31:24]	<= SPI_WREN_CMD; // Unlock write
//			cmd_len			<= 8;
			cmd_buf[31:24]	<= 0;
			cmd_len			<= 0;
			wr_buf[7:0]	<= 8'b00000000;
			rw_len			<= 0;
			sp_end_desel	<= 1;
//			sp_go			<= 1'b1;
		  end
		  
//
// *** TEST TRANSACTION
//
//		if (!sp_active && !reset_n)
//		  begin
////			cmd_buf[31:8] <= 32'b0000001_00000000_00000000;
////			cmd_buf[7:0]  <= addr[7:0];
////			cmd_len        <= 32;
////			addr           <= addr + 1'b1;
////
////			wr_buf[7:0]   <= 8'b00000000;
//
////			cmd_buf[31:0] <= 32'b00000010_00000000_00000000_00000001;		// write @ location 0x000001
//			cmd_buf[31:0] <= 32'b00000011_00000000_00000000_00000001;		// read @ location 0x000001
//			cmd_len        <= 32;
//
////			wr_buf[7:0]   <= 8'b00110010;
//			wr_buf[7:0]   <= 8'b00000000;
//
//			rd_buf[7:0]   <= 8'b00000000;
//			rw_len         <= 8;
//			sp_end_desel   <= 1;
//			sp_go          <= 1'b1;
//		  end

		sp_phase <= sp_phase + 1;


		if (init)
		  begin
			
			if (trigger_read)				// ---- send SPI READ commmand
			  begin
				spi_cmd				<= SPI_READ_CMD;
				spi_addr			<= { 7'b0000000 , r_MB128_Addr_Curr[16:0] };
				spi_dataout			<= 8'b00000000;
				cmd_buf[31:24]		<= SPI_READ_CMD;
				cmd_buf[23:17]		<= 7'b0000000;					// MSB of address
				cmd_buf[16:0]		<= r_MB128_Addr_Curr[16:0];	// remainder of addr
				cmd_len				<= 32;
				rd_buf[7:0]		<= 8'b00000000;
				rw_len				<= 8;
				sp_end_desel		<= 1;
				sp_go				<= 1'b1;
				read_in_transit		<= 1'b1;
				trigger_read		<= 0;
			  end

			if (trigger_fetchwrite)			// ---- send SPI READ commmand
			  begin
				spi_cmd				<= SPI_READ_CMD;
				spi_addr			<= { 7'b0000000 , (r_MB128_Addr + r_MB128_Bytes) };
				spi_dataout			<= 8'b00000000;
				cmd_buf[31:24]		<= SPI_READ_CMD;
				cmd_buf[23:17]		<= 7'b0000000;						// MSB of address
				cmd_buf[16:0]		<= r_MB128_Addr + r_MB128_Bytes;	// remainder of addr
				cmd_len				<= 32;
				rd_buf[7:0]		<= 8'b00000000;
				rw_len				<= 8;
				sp_end_desel		<= 1;
				sp_go				<= 1'b1;
				fetchwrt_in_transit	<= 1'b1;
				trigger_fetchwrite	<= 0;
			  end

			if (trigger_write)				// ---- send SPI WRITE commmand
			  begin
				spi_cmd				<= SPI_WRITE_CMD;
				spi_addr			<= { 7'b0000000 , r_MB128_Addr_Curr[16:0] };
				spi_dataout			<= ram_data[7:0];
				
				cmd_buf[31:24]		<= SPI_WRITE_CMD;
				cmd_buf[23:17]		<= 7'b0000000;					// MSB of address
				cmd_buf[16:0]		<= r_MB128_Addr_Curr[16:0];	// remainder of addr
				cmd_len				<= 32;
				wr_buf[7:0]		<= ram_data[7:0];
				rw_len				<= 8;
				sp_end_desel		<= 1;
				sp_go				<= 1'b1;
				write_in_transit	<= 1'b1;
				trigger_write		<= 0;
			  end

			if (trigger_wren)				// ---- send SPI WRITE ENABLE commmand
			  begin
				spi_cmd				<= SPI_WREN_CMD;
				spi_addr			<= 24'b0;
				spi_dataout			<= 8'b0;
				
				cmd_buf[31:24]		<= SPI_WREN_CMD;
				cmd_buf[23:0]		<= 24'b00000000_00000000_00000000;	// no address - don't care
				cmd_len				<= 8;
				wr_buf[7:0]		<= 8'b0;
				rw_len				<= 0;
				sp_end_desel		<= 1;
				sp_go				<= 1'b1;
				trigger_wren		<= 0;
			  end
			  
			//
			// transition to phase 1 - SCLK stays low
			//
			if (sp_phase == 2'b00)
			  begin
//				// if active, set data on MOSI
//				// if start transmission, sp_cs_n <= 0; sp_hold_n <= 1;

//				if (sp_active && sp_cs_n)
//				  begin
//					sp_cs_n <= 0;
//					sp_hold_n <= 1;
//				  end

				if (sp_active)
				  begin
					sp_cs_n <= 0;
					sp_hold_n <= 1;

					if (cmd_len > 0)
					  begin
						sp_mosi       <= cmd_buf[31];
						cmd_buf[31:1] <= cmd_buf[30:0];
						cmd_buf[0]    <= 1'b0;
					  end

					else if (rw_len > 0)
					  begin
						sp_mosi     <= wr_buf[7];
						wr_buf[7:1] <= wr_buf[6:0];
						wr_buf[0]   <= 1'b0;
					  end
				  end

				// if end transmission, sp_cs_n <= 1 *and/or* sp_hold_n <= 0
				else // if (!sp_active)
				  begin
//					sp_hold_n <= 0;
					if (sp_end_desel)
					  sp_cs_n <= 1;
					else
					  sp_hold_n <= 0;					  
				  end

			  end
			  
			  
			//
			// transition to phase 2 - SCLK transitions to high
			//
			else if (sp_phase == 2'b01)
			  begin

				if (sp_active)
					sp_clk <= 1;

			  end

			//
			// transition to phase 3 - SCLK stays high
			//
			else if (sp_phase == 2'b10)
			  begin
				  
				if (sp_active && (cmd_len > 0))
					cmd_len <= cmd_len - 1'b1;

				// if active and no command in process, read data from MISO
				else if (sp_active && (cmd_len == 0) && (rw_len > 0))
				  begin
					rd_buf[7:1] <= rd_buf[6:0];
					rd_buf[0]   <= sp_miso; //  sp_miso;
					rw_len      <= rw_len - 1'b1;
				  end
			  end
			  
			//
			// transition to phase 0 - SCLK transitions to low
			//
			else if (sp_phase == 2'b11)
			  begin

				if (sp_active)
					sp_clk <= 0;

				if (sp_go)
				  begin
					sp_active <= 1;
					sp_go     <= 0;
				  end

				if (sp_active && (rw_len == 0) && (cmd_len == 0) )
				  begin
					sp_active <= 0;

					// end-of-transaction move/increments
					// NOTE: write enable transaction doesn't require any
					//
					if (read_in_transit)
					  begin
						r_Read_Byte[7:0]	<= rd_buf[7:0];
						r_MB128_Addr_Curr	<= r_MB128_Addr_Curr + 1;
						read_in_transit		<= 0;
					  end

					if (fetchwrt_in_transit)
					  begin
						r_FetchWrite_Byte[7:0]	<= rd_buf[7:0];
						fetchwrt_in_transit		<= 0;
					  end

					if (write_in_transit)
					  begin
						r_MB128_Addr_Curr	<= r_MB128_Addr_Curr + 1;
						wr_buf[7:0]		<= 8'b00000000;
						write_in_transit	<= 0;
						trigger_wren		<= 1;
					  end

				  end

			  end

		  end


//////////
//  THIS IS TAKING INPUT FROM i_CLK / i_DATA:
//////////

	// special case of transition to WriteBits:
	// if the SPI fetch is completed (i.e. data is fetched), you need to place
	// the previously-fetched data into ram_data[] for it to be used
	if (sp_active == 0)
		r_State_Prev <= r_State;
	
	// Immediately after transition to STATE_WRITEBITS. place the previously-fetched data into ram_data
	// Note: DO NOT WAIT FOR incoming i_Clk signal, as the ram_data needs to have already been
	//       filled before the next transition.
	//
	if ((r_State_Prev != STATE_WRITEBITS) && (r_State == STATE_WRITEBITS) && (sp_active == 0))
		ram_data[7:0] <= r_FetchWrite_Byte[7:0];

//	if (clk_sample == 1'b1)	// sample joypad input
//	  begin
		
		if ((i_Clk == 0) && (r_Stop_Active == 1'b1))		// reset r_Active on the down-swing of i_Clk
		  begin
			r_Active		<= 0;
			r_Stop_Active	<= 0;
		  end

		i_Clk_Prev <= i_Clk_Debounce;
		if ((i_Clk_Debounce != i_Clk_Prev) && (i_Clk_Debounce == 1'b1))		// is joypad 'i_Clk_Debounce' a posedge transition ?
		  begin

			case (r_State)									// state machine
				
			  STATE_IDLE:									// starting state
				begin
				  if (r_Bit_Count <= 7)
					r_Bit_Count		<= r_Bit_Count + 1'b1;		// make sure that the train-up sequence >= 8 bits
				
				  r_Register[6:0]	<= r_Register[7:1];		// shift-in the data from joypad port
				  r_Register[7]		<= i_Data;

				  r_Pos_Edge	<= 4'b0000;
				  r_Neg_Edge	<= 4'b0000;
				  
				  r_Active		<= 1'b0;				// no sync byte yet
				  r_Stop_Active	<= 1'b0;

				  if (( { i_Data, r_Register[7:1] } == 8'hA8) && (r_Bit_Count >= 7)) begin
					  r_Active	<= 1'b1;				// sync byte identified; engage MB128 mode
					  
					  r_State		<= STATE_A8_A1;
					  r_Bit_Count	<= 1'b0;
				  end
				end

			  STATE_A8_A1:									// detected 0xA8 sync pattern
				begin
//				  r_Pos_Edge   <= 4'b0000;
//				  r_Neg_Edge   <= 4'b0000;
//				  
				  r_State      <= STATE_A8_A2;
				  r_Bit_Count  <= 1'b0;
				end
			  
			  
			  STATE_A8_A2:									// acknowledge
				begin
				  // Note that IDENT actually takes the value sent in data
				  r_Pos_Edge   <= { 1'b0, i_Data, 1'b0, 1'b0 };
				  r_Neg_Edge   <= { 1'b0, i_Data, 1'b0, 1'b0 };
				  
				  r_State      <= STATE_REQ;
				  r_Bit_Count  <= 1'b0;
				end

			  STATE_REQ:									// evaluate type of request (READ/WRITE)
				begin
				  r_Req         <= i_Data;
				  
				  r_Pos_Edge    <= 4'b0000;
				  r_Neg_Edge    <= 4'b0000;
				  
				  r_State       <= STATE_ADDR;
				  r_Bit_Count   <= 1'b0;
				  
				  r_MB128_Addr  <= 17'b00000000000000000;
				  r_MB128_Bits  <=  3'b000;
				  r_MB128_Bytes <= 17'b00000000000000000;

				  if (i_Data == CMD_WRITE)
					o_WriteLED	<= 1'b1;
				  else
					o_ReadLED	<= 1'b1;
				end

			  STATE_ADDR:									// get starting address
				begin
				  // 10 address bits come in
				  // LSB signifies 128 bytes of offset
				  r_Bit_Count			<= r_Bit_Count + 1'b1;
				  
				  r_MB128_Addr[15:0]	<= r_MB128_Addr[16:1];
				  r_MB128_Addr[16]		<= i_Data;
				  
//				  r_Pos_Edge			<= 4'b0000;
//				  r_Neg_Edge			<= 4'b0000;
//				  
				  r_StateAddr			<= 1'b1;
				  
				  if (r_Bit_Count == 9) begin
					  r_MB128_Addr_Curr	<= { i_Data , r_MB128_Addr[16:1] };
					  
					  // initiate SPI read of byte at { i_Data, r_MB128_Addr[16:1] }

					  if (r_Req == CMD_READ)
						trigger_read	<= 1'b1;			// get read byte in advance of use (if READ command)
					  else
						trigger_wren	<= 1'b1;			// unlock SPI write command

					  r_State			<= STATE_LENBITS;
					  r_Bit_Count		<= 1'b0;
				  end
				end
			  
			  
			  STATE_LENBITS:								// get least-significant 3 bits of data xfer size
				begin
				  // 3 bits come in identifying # of bits (smaller than full-byte read/writes)
				  r_Bit_Count			<= r_Bit_Count + 1'b1;
				  
				  r_MB128_Bits[1:0]	<= r_MB128_Bits[2:1];
				  r_MB128_Bits[2]		<= i_Data;
				  
//				  r_Pos_Edge			<= 4'b0000;
//				  r_Neg_Edge			<= 4'b0000;
//				  
				  if (r_Bit_Count == 2) begin
					  if (r_Req == CMD_WRITE)
						 r_Write_Byte	<= 8'b00000000;		// initialize write in case of WRITE command

					  r_State			<= STATE_LENBYTES;
					  r_Bit_Count		<= 1'b0;
				  end
				end
			  
			  
			  STATE_LENBYTES:								// get number of bytes in data xfer size
				begin
				  // 17 bits come in identifying # of bytes in payload
				  r_Bit_Count			<= r_Bit_Count + 1'b1;
				  
				  r_MB128_Bytes[15:0]	<= r_MB128_Bytes[16:1];
				  r_MB128_Bytes[16]		<= i_Data;

				  if (r_Bit_Count == 16) begin
					  r_Pos_Edge <= { 3'b000 , r_Req };
					  r_Neg_Edge <= { 3'b000 , r_Req };
					  
					  r_Bit_Count <= 1'b0;

					  if ((r_Req == CMD_WRITE) && (r_MB128_Bits != 0))
						trigger_fetchwrite	<= 1'b1;

					  if ({ i_Data , r_MB128_Bytes[16:1] } == 17'b0) begin	// zero bytes, but will execute on at least 1 bit
						if (r_MB128_Bits == 0)
						  r_State <= (r_Req == CMD_WRITE) ? STATE_WRITE_TRAIL : STATE_READ_TRAIL;
						else
						  r_State <= (r_Req == CMD_WRITE) ? STATE_WRITEBITS : STATE_READBITS;
					  end
					  else
						r_State <= (r_Req == CMD_WRITE) ? STATE_WRITE : STATE_READ;
				  end
//				  else begin
//					  r_Pos_Edge		<= 4'b0000;
//					  r_Neg_Edge		<= 4'b0000;
//				  end
				end

			  STATE_READ:
				begin
				  // assumption: we have already read the first byte, above
				  r_Bit_Count		<= r_Bit_Count + 1'b1;
				  
				  r_Pos_Edge		<= { 3'b000, r_Read_Byte[0] };
				  r_Neg_Edge		<= { 3'b000, r_Read_Byte[0] };
				  
				  r_Read_Byte[6:0]	<= r_Read_Byte[7:1];
				  r_Read_Byte[7]	<= 1'b0;
				  
				  if (r_Bit_Count == 7) begin
					  r_Bit_Count	<= 0;
					  
					  if (r_MB128_Bytes == 1) begin
						  if (r_MB128_Bits != 0) begin
							r_State				<= STATE_READBITS;
							trigger_read		<= 1'b1;			// Get next byte from memory & inc addr
						  end
						  else begin
							r_State				<= STATE_READ_TRAIL;
						  end
						  
					  end
					  else begin
						trigger_read			<= 1'b1;			// Get next byte from memory & inc addr
						r_MB128_Bytes			<= r_MB128_Bytes - 1'b1;
					  end
				  end
				end
			  
			  
			  STATE_READBITS:
				begin
				  // Note: we have already read the full byte, above
				  r_Bit_Count		<= r_Bit_Count + 1'b1;
				  
				  r_Pos_Edge		<= { 3'b000, r_Read_Byte[0] };
				  r_Neg_Edge		<= { 3'b000, r_Read_Byte[0] };
				  
				  r_Read_Byte[6:0]	<= r_Read_Byte[7:1];
				  r_Read_Byte[7]	<= 1'b0;
				  
				  if ((r_Bit_Count + 1) == r_MB128_Bits) begin
					  r_State		<= STATE_READ_TRAIL;
					  r_Bit_Count	<= 1'b0;
				  end
				end
			  
			  
			  STATE_READ_TRAIL:
				begin
				  r_Bit_Count		<= r_Bit_Count + 1'b1;
				  
				  case (r_Bit_Count)
					
					2'b00:
					  begin
						r_Pos_Edge		<= 4'b0000;
						r_Neg_Edge		<= 4'b0000;
					  end
					
					2'b01:
					  begin
						r_Pos_Edge		<= 4'b0000;
						r_Neg_Edge		<= 4'b0000;
					  end
					
					2'b10:
					  begin
						r_Pos_Edge		<= 4'b0000;
						r_Neg_Edge		<= 4'b0000;
						
						r_State			<= STATE_IDLE;
						r_Bit_Count		<= 1'b0;
						r_Register		<= 8'b00000000;
						r_Stop_Active	<= 1'b1;
						o_ReadLED   	<= 1'b0;
						o_WriteLED 	 	<= 1'b0;
					  end
				  
				  endcase
				end


			  STATE_WRITE:
				begin
				  r_Bit_Count		<= r_Bit_Count + 1'b1;
				  
				  r_Pos_Edge		<= 4'b0000;
				  r_Neg_Edge		<= 4'b0000;
				  
				  r_Write_Byte[r_Bit_Count] <= i_Data;
				  
				  if (r_Bit_Count == 7) begin
					  r_Bit_Count	<= 0;
					  // Write { i_Data, r_Write_Byte[6:0] } @ r_MB128_Addr_Curr to SPI

					  ram_data		<= { i_Data , r_Write_Byte[6:0] };
					  trigger_write	<= 1'b1;					// write byte to memory & inc addr
					  
					  r_Write_Byte	<= 8'b00000000;
					  
					  if (r_MB128_Bytes == 1) begin
						  if (r_MB128_Bits != 0) begin
							  r_State	<= STATE_WRITEBITS;
						  end
						  else begin
							  r_State	<= STATE_WRITE_TRAIL;
						  end
						  
					  end
					  else begin
						  r_MB128_Bytes	<= r_MB128_Bytes - 1'b1;
					  end
				  end
				end
			  

			  STATE_WRITEBITS:
				begin
				  // Final byte already read previously; now mix bits, and rewrite byte at end of receiving data
				  r_Bit_Count		<= r_Bit_Count + 1'b1;
				  
//				  r_Pos_Edge		<= 4'b0000;
//				  r_Neg_Edge		<= 4'b0000;
//				  
				  ram_data[r_Bit_Count]		<= i_Data;
				  
				  if ((r_Bit_Count + 1) == r_MB128_Bits) begin

					  trigger_write	<= 1'b1;				// write byte to memory
					  r_State		<= STATE_WRITE_TRAIL;
					  r_Bit_Count	<= 1'b0;
					  
				  end
				end
			  
			  
			  STATE_WRITE_TRAIL:
				begin
				  r_Bit_Count			<= r_Bit_Count + 1'b1;
				  
				  case (r_Bit_Count)
					
					3'b000:
					  begin
						r_Pos_Edge		<= 4'b0000;
						r_Neg_Edge		<= 4'b0000;
					  end
					
					3'b001:
					  begin
						r_Pos_Edge		<= 4'b0000;
						r_Neg_Edge		<= 4'b0000;
					  end
					
					3'b010:
					  begin
						r_Pos_Edge		<= 4'b0000;
						r_Neg_Edge		<= 4'b0000;
					  end
					
					3'b011:
					  begin
						r_Pos_Edge		<= 4'b0000;
						r_Neg_Edge		<= 4'b0000;
					  end
					
					3'b100:
					  begin
						r_Pos_Edge		<= 4'b0000;
						r_Neg_Edge		<= 4'b0000;
						
						r_State			<= STATE_IDLE;
						r_Register		<= 8'b00000000;
						r_Bit_Count		<= 1'b0;
						r_Stop_Active	<= 1'b1;
						r_Register		<= 7'b0000000;
						o_ReadLED   	<= 1'b0;
						o_WriteLED 	 	<= 1'b0;
					  end
					
				  endcase
				end


			  default:										// unaccounted state - return to IDLE
				begin
				  r_State		<= STATE_IDLE;
				  r_Bit_Count	<= 1'b0;
				  r_Register	<= 8'b00000000;
				  r_Stop_Active	<= 1'b1;
				  r_Register	<= 7'b0000000;
				  o_ReadLED		<= 1'b0;
				  o_WriteLED	<= 1'b0;
				end

			endcase

		  end // if i_Clk_Debounce posedge

//	  end


	end		// always


// THIS IS PART OF MB128 RETURN SET:
//
//assign o_Active = (r_State != STATE_IDLE);
assign o_Active = r_Active;
assign o_Data   = i_Clk_Debounce ? r_Pos_Edge[0] : r_Neg_Edge[0];
assign o_Ident  = i_Clk_Debounce ? r_Pos_Edge[2] : r_Neg_Edge[2];


endmodule
