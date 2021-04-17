module top (
  output o_Active,
  input  reset_n,
  input  i_Clk,
  input  i_Data,
  output o_Data,		// actual data
  output o_Ident,		// identification
  output o_WriteLED,
  output o_ReadLED,

  output sp_cs_n,
  output sp_clk,
  input  sp_miso,
  output sp_mosi,
  output sp_hold_n
  
//
//  inout pin7_done,
//  inout pin8_pgmn,
//  inout pin9_jtgnb,
//  inout pin10_sda,
//  inout pin11_scl

);

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

//	.pin7_done(pin7_done),
//	.pin8_pgmn(pin8_pgmn),
//	.pin9_jtgnb(pin9_jtgnb),
//	.pin10_sda(pin10_sda),
//	.pin11_scl(pin11_scl)
  );


endmodule