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
  inout pin17,
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
  assign pin6 = 1'bz;
//  assign pin7_done = 1'bz;
//  assign pin8_pgmn = 1'bz;
  
  // right side of board
  //assign pin12_tdo = 1'bz;
  //assign pin13_tdi = 1'bz;
  //assign pin14_tck = 1'bz;
  //assign pin15_tms = 1'bz;
  assign pin16 = 1'bz;
  assign pin17 = 1'bz;
//  assign pin18_cs = 1'bz;
//  assign pin19_sclk = 1'bz;
//  assign pin20_miso = 1'bz;
//  assign pin21 = 1'bz;
//  assign pin22 = 1'bz;

  wire clk;
  OSCH #(
    .NOM_FREQ("2.08")			// 53.20 is OK (see page 29 of PLL guide)
  ) internal_oscillator_inst (
    .STDBY(1'b0),
	.OSC(clk)
  );
  
  reg [31:0] led_timer = 8'h00000000;

  reg init = 0;
  reg spidrv_clk = 0;
  reg spidrv_clk_prev = 0;
  reg [1:0] sp_phase = 2'b00;
  reg [22:0] spi_uberclock = 0;
  reg sp_clk;
  reg sp_cs = 0;
  reg sp_hold = 0;
  reg sp_go   = 1;
  reg sp_active = 0;
  reg sp_end_desel = 0;
  reg sp_mosi = 0;
  reg sp_miso = 0;
  reg  [5:0] cmd_len = 6'b000011;  // 3;
  reg  [3:0] rw_len = 0;
  reg [31:0] cmd_buf = 32'b11110000_00000000_00000000_00000000; // = { 3'b101 , 29'b0};
  reg  [7:0] rd_buf = 8'b00000000;
  reg  [7:0] wr_buf = 8'b00000000;
  
  always @(posedge clk)
	begin
		led_timer <= led_timer[30:0] +2;
	end

  always @(posedge clk)
	begin

		if (spi_uberclock[1] && !init)
		  begin
			sp_cs   <= 1'b1;
			sp_hold <= 1'b1;
			init    <= 1'b1;

			cmd_buf[31:29] <= 3'b101;
			cmd_len        <= 3;
			wr_buf[7:5]   <= 3'b010;
			rw_len         <= 3;
			sp_end_desel   <= 1;
			sp_go          <= 1'b1;
		  end

		spi_uberclock  <= spi_uberclock + 1'b1;
        sp_phase[1:0] <= spi_uberclock[22:21];

		spidrv_clk     <= led_timer[22];
		sp_miso        <= pin20_miso;

		if (init && (spi_uberclock[20:0] == 21'b00000_00000000_00000000))
		  begin
			
			//
			// transition to phase 1 - SCLK stays low
			//
			if (sp_phase == 2'b00)
			  begin
//				// if active, set data on MOSI
//				// if start transmission, sp_cs <= 0; sp_hold <= 0;
				if (sp_active && sp_cs)
				  begin
					sp_cs <= 0;
					sp_hold <= 0;
				  end

				if (sp_active)
				  begin
					if (cmd_len > 0)
					  begin
						sp_mosi       <= cmd_buf[31];
						cmd_buf[31:1] <= cmd_buf[30:0];
						cmd_buf[0]    <= 1'b0;
//						cmd_len <= cmd_len - 1'b1;
					  end
					else if (rw_len > 0)
					  begin
						sp_mosi     <= wr_buf[7];
						wr_buf[7:1] <= wr_buf[6:0];
						wr_buf[0]   <= 1'b0;
					  end
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

//				// if end transmission, sp_cs <= 1 *and/or* sp_hold <= 1
				if (!sp_active)
				  begin
					sp_hold <= 1;
					if (sp_end_desel)
					  sp_cs <= 1;
				  end
			  end
			  			

		  end
	end

  assign pin1       = led_timer[24];
  assign pin2       = rd_buf[7];
//  assign pin7_done  = led_timer[23];
//  assign pin8_pgmn  = led_timer[22];
//  assign pin9_jtgnb = led_timer[21];
  assign pin10_sda  = led_timer[20];
  assign pin11_scl  = led_timer[19];

  assign pin7_done  = rw_len[1];
  assign pin8_pgmn  = rw_len[0];
  assign pin9_jtgnb = cmd_buf[31];
	
  assign pin18_cs   = sp_cs;
  assign pin19_sclk = sp_clk;
//  assign pin20_miso = sp_miso;
  assign pin21      = sp_mosi;
  assign pin22      = sp_hold;

  assign pin5       = spidrv_clk;
  assign pin3_sn    = sp_phase[1];
  assign pin4_mosi  = sp_phase[0];

endmodule
