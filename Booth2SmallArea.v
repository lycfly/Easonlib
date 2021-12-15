// Generator : SpinalHDL v1.6.1    git head : 3bf789d53b1b5a36974196e2d591342e15ddf28c
// Component : Booth2SmallArea

`timescale 1ns/1ps 

module Booth2SmallArea (
  input      [7:0]    io_dinA,
  input      [7:0]    io_dinB,
  output     [15:0]   io_dout,
  input               clk,
  input               resetn
);

  reg        [16:0]   shiftReg;
  wire       [7:0]    NegativeB;

  assign NegativeB = (- io_dinB);
  assign io_dout = ($signed(io_dinA) * $signed(io_dinB));

endmodule
