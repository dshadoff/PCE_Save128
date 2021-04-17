`timescale 1ns / 1ns

module MB128_TB ();
	
	localparam  syclk_ns=12, joy_hi_ns=4190, joy_lo_ns=1815;

	reg clk			= 1'b0;
	reg reset_n 	= 1'b1;
	
	reg i_Clk		= 1'b0;
	reg r_Data		= 1'b0;
	reg sp_miso		= 1'b1;
//	reg o_Active;
//	reg o_Data;
//	reg o_Ident;
//	reg o_ReadLED;
//	reg o_WriteLED;
//	reg sp_cs_n		= 1'b1;
//	reg sp_clk;
//	reg sp_mosi;
//	reg sp_hold_n	= 1'b1;
	wire [5:0] clk_samplediv;

	reg syncdone	= 1'b0;
	reg reqdone		= 1'b0;
	reg addrdone	= 1'b0;
	reg bitlendone	= 1'b0;
	reg bytelendone	= 1'b0;
	reg bytedone	= 1'b0;
	reg traildone	= 1'b0;
	reg trans_type	= 1'b0;

	parameter WRITE = 2'b0;
	parameter READ  = 2'b1;
	
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


	reg [3:0] host_state		=  4'b0;
	reg [5:0] count			=  6'b0;
	reg [7:0] sync_send		=  8'b0;
	reg [9:0] addr_send		= 10'b0;
	reg [2:0] bitlen_send		=  3'b0;
	reg [16:0] bytelen_send	= 17'b0;
	reg [7:0] byte_send		=  8'b0;
	reg [1:0] bit_send			=  2'b0;
	
	always #syclk_ns clk <= ~clk;
		
	MB128 UUT(
	.clk_sys(clk),
	.reset_n(reset_n),

	.i_Clk(i_Clk),
	.i_Data(r_Data),
	
	.o_Active(o_Active),
	.o_Data(o_Data),
	.o_Ident(o_Ident),
	.o_ReadLED(o_ReadLED),
	.o_WriteLED(o_WriteLED),

	.sp_cs_n(sp_cs_n),
	.sp_clk(sp_clk),
	.sp_miso(sp_miso),
	.sp_mosi(sp_mosi),
	.sp_hold_n(sp_hold_n),
	
	.clk_sample(clk_sample),
	.clk_samplediv(clk_samplediv[5:0])

//	.pin7_done(pin7_done),
//	.pin8_pgmn(pin8_pgmn),
//	.pin9_jtgnb(pin9_jtgnb),
//	.pin10_sda(pin10_sda),
//	.pin11_scl(pin11_scl)
	);
	
	initial
	  begin
	    $display("**********************  STARTING TESTBENCH  ***");
		#1;
		i_Clk = 0;
		
		trans_type		= READ;
//		trans_type		= WRITE;
		
		sync_send		= 8'hA8;
		addr_send		= 10'b00_1010_0101;		// times 128 bytes = $05280
		bitlen_send		= 3'b010;
		bytelen_send	= 17'b0_0000_0000_0000_0010;
		byte_send		= 8'h62;
		bit_send		= 2'b01;
		
		#1650;		// startup SPI write-unlock sequence

		host_state = STATE_IDLE;
		r_Data = 1'b0;
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		count = 0;
		
		r_Data = sync_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = sync_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = sync_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = sync_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = sync_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = sync_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = sync_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = sync_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

	    $display("**********************  SYNC BYTE SENT  ***");

		count = 0;
		
		// Output 2 blank cycles for recognition
		r_Data = 1'b0;
		host_state = STATE_A8_A1;
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		$display("**********************  SENT A1 BIT = 0 ***");

		r_Data = 1'b1;
		host_state = STATE_A8_A2;
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		$display("**********************  SENT A2 BIT = 1 ***");
		

		// Output command to REQuest 'write'
		//
		count = 0;
		host_state = STATE_REQ;
		r_Data = trans_type;	// WRITE = 0, READ = 1

		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		reqdone = 1'b1;

	    $display("**********************  REQUEST SENT  ***");


		// Output 10-cycle address = 2
		//
		count = 0;
		host_state = STATE_ADDR;
		r_Data = addr_send[count];
		
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = addr_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = addr_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = addr_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = addr_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = addr_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = addr_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = addr_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = addr_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = addr_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		addrdone = 1'b1;

	    $display("**********************  ADDRESS SENT  ***");

		// Output 3-cycle bitlen
		//
		count = 0;
		host_state = STATE_LENBITS;
		
		r_Data = bitlen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = bitlen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = bitlen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		bitlendone = 1'b1;

	    $display("**********************  # BITS SENT  ***");


		// Output 17-cycle bytelen
		count = 0;
		host_state = STATE_LENBITS;
		
		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

		r_Data = bytelen_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		bytelendone = 1'b1;

	    $display("**********************  # BYTES SENT  ***");


		// Output 3-cycle bitlen
		//
		count = 0;
		host_state = STATE_READ;

		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		bytedone = 1'b1;

	    $display("**********************  BYTE 1 SENT  ***");


		byte_send		= 8'hC3;
		count = 0;
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = byte_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		bytedone = 1'b1;

	    $display("**********************  BYTE 2 SENT  ***");


		// READ/WRITE TRAIL
		//
		count = 0;
		host_state = STATE_READBITS;

		r_Data = bit_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = bit_send[count];
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

	    $display("**********************  BITS SENT  ***");


		// READ/WRITE TRAIL
		//
		count = 0;
		host_state = STATE_READTRAIL;

		r_Data = 1'b0;
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = 1'b0;
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		r_Data = 1'b0;
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		
		if (trans_type == WRITE) begin
			r_Data = 1'b0;
			#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
			
			r_Data = 1'b0;
			#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;
		end
		traildone = 1'b1;

	    $display("**********************  TRAIL SENT  ***");


		// Output extra '0'
		count = 0;
		host_state = STATE_IDLE;
		
		r_Data = 1'b0;
		#joy_lo_ns; i_Clk = 1; #joy_hi_ns; i_Clk = 0; count = count + 1;

	    $display("**********************  SIMULATION DONE  ***");

		$finish;
	  end

endmodule