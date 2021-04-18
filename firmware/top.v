module top (
  output o_Active,		// drives Active LED and 74HC157
  input  reset_n,
  input  i_Clk,			// CLR joypad signal from PCE
  input  i_Data,		// SEL joypad signal from PCE
  output o_Data,		// actual data output (D0 on joypad)
  output o_Ident,		// identification (D2 on joypad)
  output o_WriteLED,	// status LED
  output o_ReadLED,		// status LED

  output sp_cs_n,		// SPI FRAM /CS line
  output sp_clk,		// SPI FRAM CLK line
  input  sp_miso,		// SPI FRAM SO (data from chip) line
  output sp_mosi,		// SPI FRAM SI (data into chip) line
  output sp_hold_n		// SPI FRAM /HOLD line
);

// Quick notes:
// ------------
// - 'Active' is active positive (i.e. 74HC157 SEL='1' should select inputs from FPGA)
// - LEDs are active positive (i.e. '1' level turns it on)
// - 25V10 SPI chip is OK up to clocks at least 25MHz, and 40MHz in some cases
//   (we divide the 44.33MHz clock into 4 phases, leaving roughly 11.08MHz clock)
// - 25V10 SPI chip requires an SPI unlock command (0x02) to enable write
//   -> importantly, this is PER WRITE TRANSACTION !
//
  wire clk;
  OSCH #(
    .NOM_FREQ("44.33")			// (see page 29 of PLL guide)
  ) internal_oscillator_inst (
    .STDBY(1'b0),
	.OSC(clk)
  );



MB128 MB128 (
	.clk_sys(clk),
	.reset_n(reset_n),

	.o_Active(o_Active),
	.i_Clk(i_Clk),
	.i_Data(i_Data),
	.o_Data(o_Data),
	.o_Ident(o_Ident),
	.o_ReadLED(o_ReadLED),
	.o_WriteLED(o_WriteLED),

	.sp_cs_n(sp_cs_n),
	.sp_clk(sp_clk),
	.sp_miso(sp_miso),
	.sp_mosi(sp_mosi),
	.sp_hold_n(sp_hold_n)
  );


endmodule