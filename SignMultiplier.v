// Generator : SpinalHDL v1.6.4    git head : 598c18959149eb18e5eee5b0aa3eef01ecaa41a1
// Component : SignMultiplier
// Git hash  : 6bea6bb7df6fd9185f6024fe72178a5f7d526d6e

`timescale 1ns/1ps 

module SignMultiplier (
  input      [7:0]    io_dinA,
  input      [7:0]    io_dinB,
  input               io_din_vld,
  output     [15:0]   io_dout,
  output              io_dout_vld,
  input               clk,
  input               resetn
);

  reg        [15:0]   Result;
  reg                 dout_vld_reg;

  assign io_dout = Result;
  assign io_dout_vld = dout_vld_reg;
  always @(posedge clk or negedge resetn) begin
    if(!resetn) begin
      Result <= 16'h0;
      dout_vld_reg <= 1'b0;
    end else begin
      dout_vld_reg <= io_din_vld;
      if(io_din_vld) begin
        Result <= ($signed(io_dinA) * $signed(io_dinB));
      end
    end
  end


endmodule
