// Generator : SpinalHDL v1.6.1    git head : 3bf789d53b1b5a36974196e2d591342e15ddf28c
// Component : FloorAndWrap

`timescale 1ns/1ps 

module FloorAndWrap (
  input      [19:0]   din,
  output     [15:0]   dout
);

  wire       [16:0]   _zz_dataOut;
  wire       [19:0]   _zz_dataOut_1;
  wire       [15:0]   dataOut;

  assign _zz_dataOut = (_zz_dataOut_1 >>> 3);
  assign _zz_dataOut_1 = din;
  assign dataOut = _zz_dataOut[15 : 0];
  assign dout = dataOut;

endmodule
