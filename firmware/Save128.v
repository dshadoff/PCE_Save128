module top (
  inout pin1,
  inout pin2,
  inout pin3_sn,
  inout pin4_mosi,
  inout pin5,
  inout pin6,
  inout pin7_done,
  inout pin8_pgmn,
  inout pin9_jtgnb,
  inout pin10_sda,
  inout pin11_scl,
  //inout pin12_tdo,
  //inout pin13_tdi,
  //inout pin14_tck,
  //inout pin15_tms,
  inout pin16, 
  input wire pin17,
  inout pin18_cs,
  inout pin19_sclk,
  input wire pin20_miso,
  inout pin21,
  inout pin22
);

  // left side of board
//  assign pin1 = 1'bz;
//  assign pin2 = 1'b0;
//  assign pin3_sn = 1'bz;
//  assign pin4_mosi = 1'bz;
//  assign pin5 = 1'bz;
//  assign pin6 = 1'bz;
//  assign pin7_done = 1'bz;
//  assign pin8_pgmn = 1'bz;
  
  // right side of board
  //assign pin12_tdo = 1'bz;
  //assign pin13_tdi = 1'bz;
  //assign pin14_tck = 1'bz;
  //assign pin15_tms = 1'bz;
  assign pin16 = 1'bz;
//  assign pin17 = 1'bz;
//  assign pin18_cs = 1'bz;
//  assign pin19_sclk = 1'bz;
//  assign pin20_miso = 1'bz;
//  assign pin21 = 1'bz;
//  assign pin22 = 1'bz;

  wire clk;
  OSCH #(
    .NOM_FREQ("53.20")			// 53.20 is OK (see page 29 of PLL guide)  2.08
  ) internal_oscillator_inst (
    .STDBY(1'b0),
	.OSC(clk)
  );
  
//  reg [31:0] led_timer = 8'h00000000;

  reg init = 0;
  reg spidrv_clk = 0;
  reg spidrv_clk_prev = 0;
  reg [1:0] sp_phase = 2'b00;
  reg [23:0] spi_uberclock = 0;
  reg sp_clk;
  reg sp_cs_n = 0;
  reg sp_hold_n = 0;
  reg sp_go   = 1;
  reg sp_active = 0;
  reg sp_end_desel = 0;
  reg sp_mosi = 0;
  reg sp_miso = 0;
  reg  [5:0] cmd_len = 6'b100000;  // 32;
  reg  [4:0] rw_len = 5'b01000;  // 8
  reg [31:0] cmd_buf = 32'b00000011_00000000_00000000_00000000; // = { SPI 3 = READ; 24 bit addr = 0 };
  reg  [15:0] rd_buf = 16'b00000000;
  reg  [15:0] wr_buf = 16'b00000000;
  
//  always @(posedge clk)
//	begin
//		led_timer <= led_timer[30:0] +2;
//	end
//
  always @(posedge clk)
	begin

		if (spi_uberclock[10] && !init)
		  begin
			sp_cs_n   <= 1'b1;
			sp_hold_n <= 1'b0;
			init    <= 1'b1;

			cmd_buf[31:24] <= 8'b00000011; // _00000000_00000000_00000000;
			cmd_len        <= 32;
			wr_buf[7:0]   <= 8'b00000000;
			rw_len         <= 8;
			sp_end_desel   <= 0;
			sp_go          <= 1'b1;
		  end
		  
		if (spi_uberclock[10] && !sp_active && !pin17)
		  begin
//			cmd_buf[31:0] <= 8'b00000011_00000000_00000000_00000001;
//			cmd_len        <= 32;

			wr_buf[7:0]   <= 8'b00000000;
			rd_buf[7:0]   <= 8'b00000000;
			rw_len         <= 8;
			sp_end_desel   <= 0;
			sp_go          <= 1'b1;
		  end

		spi_uberclock  <= spi_uberclock + 1'b1;
        sp_phase[1:0] <= spi_uberclock[22:21];

		spidrv_clk     <= spi_uberclock[21];
		sp_miso        <= pin20_miso;

		if (init && (spi_uberclock[20:0] == 21'b00000_00000000_00000000))
		  begin
			
			//
			// transition to phase 1 - SCLK stays low
			//
			if (sp_phase == 2'b00)
			  begin
//				// if active, set data on MOSI
//				// if start transmission, sp_cs_n <= 0; sp_hold_n <= 1;
				if (sp_active && sp_cs_n)
				  begin
					sp_cs_n <= 0;
					sp_hold_n <= 1;
				  end

				if (sp_active)
				  begin
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
					sp_hold_n <= 0;
					if (sp_end_desel)
					  sp_cs_n <= 1;
				  end

			  end
			  
			  
			//
			// transition to phase 2 - SCLK transitions to high
			//
			else if (sp_phase == 2'b01)
			  begin
				sp_clk <= 1;

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
			// transition to phase 3 - SCLK stays high
			//
			else if (sp_phase == 2'b10)
			  begin
				if (sp_go)
				  begin
					sp_active <= 1;
					sp_go     <= 0;
				  end

				if (sp_active && (rw_len == 0) && (cmd_len == 0) )
				  begin
					sp_active <= 0;
				  end
			  end
			  
			//
			// transition to phase 0 - SCLK transitions to low
			//
			else if (sp_phase == 2'b11)
			  begin
				sp_clk <= 0;

			  end
			  			

		  end
	end

  assign pin1       = spi_uberclock[23];

  assign pin2       = sp_phase[1];
  assign pin3_sn    = sp_phase[0];

//  assign pin7_done  = led_timer[23];
//  assign pin8_pgmn  = led_timer[22];
//  assign pin9_jtgnb = led_timer[21];

  assign pin18_cs   = sp_cs_n;
  assign pin19_sclk = sp_clk;
//  assign pin20_miso = sp_miso;
  assign pin21      = sp_mosi;
  assign pin22      = sp_hold_n;

  
  assign pin4_mosi  = rd_buf[7];
  assign pin5       = rd_buf[6];
  assign pin6       = rd_buf[5];
  assign pin7_done  = rd_buf[4];
  assign pin8_pgmn  = rd_buf[3];
  assign pin9_jtgnb = rd_buf[2];
  assign pin10_sda  = rd_buf[1];
  assign pin11_scl  = rd_buf[0];
	

endmodule
