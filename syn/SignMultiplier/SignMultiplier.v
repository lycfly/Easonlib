// Generator : SpinalHDL v1.6.1    git head : 3bf789d53b1b5a36974196e2d591342e15ddf28c
// Component : SignMultiplier

`timescale 1ns/1ps 

module SignMultiplier (
  input      [7:0]    io_dinA,
  input      [7:0]    io_dinB,
  output     [15:0]   io_dout
);


  assign io_dout = ($signed(io_dinA) * $signed(io_dinB));

endmodule
