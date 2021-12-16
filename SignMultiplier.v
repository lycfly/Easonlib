// Generator : SpinalHDL v1.6.1    git head : 3bf789d53b1b5a36974196e2d591342e15ddf28c
// Component : SignMultiplier
// Git hash  : 3663ba7d2e85ff08615a5459721c2d80dbec83b9

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
