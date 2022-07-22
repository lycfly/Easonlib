// Generator : SpinalHDL v1.7.1    git head : 0444bb76ab1d6e19f0ec46bc03c4769776deb7d5
// Component : Booth2SmallArea
// Git hash  : f17e5d6478b496071fee30b215c013ea1d1eb60a

`timescale 1ns/1ps

module Booth2SmallArea (
  input               io_din_vld,
  input      [7:0]    io_dinA,
  input      [7:0]    io_dinB,
  output              io_dout_vld,
  output     [15:0]   io_dout,
  input               clk,
  input               resetn
);

  wire       [7:0]    _zz_sumShiftB;
  wire       [7:0]    _zz_sumShiftB_1;
  wire       [16:0]   _zz_shiftReg;
  wire       [7:0]    _zz_shiftReg_1;
  reg        [16:0]   shiftReg;
  wire       [1:0]    flag_bits;
  wire       [7:0]    NegativeB;
  wire       [7:0]    sumShiftB;
  wire       [7:0]    addMux;
  reg        [2:0]    cal_cnt;
  reg                 cal_en;
  wire                when_Booth2SmallArea_l32;
  reg                 cal_en_regNext;

  assign _zz_sumShiftB = ($signed(_zz_sumShiftB_1) + $signed(addMux));
  assign _zz_sumShiftB_1 = shiftReg[16 : 9];
  assign _zz_shiftReg = shiftReg;
  assign _zz_shiftReg_1 = sumShiftB;
  assign flag_bits = shiftReg[1 : 0];
  assign NegativeB = (- io_dinB);
  assign addMux = ((flag_bits[1] && (! flag_bits[0])) ? NegativeB : io_dinB);
  assign sumShiftB = _zz_sumShiftB;
  assign when_Booth2SmallArea_l32 = (cal_cnt == 3'b111);
  assign io_dout_vld = ((! cal_en) && cal_en_regNext);
  assign io_dout = shiftReg[16 : 1];
  always @(posedge clk or negedge resetn) begin
    if(!resetn) begin
      shiftReg <= 17'h0;
      cal_cnt <= 3'b000;
      cal_en <= 1'b0;
    end else begin
      if(io_din_vld) begin
        cal_en <= 1'b1;
      end else begin
        if(when_Booth2SmallArea_l32) begin
          cal_en <= 1'b0;
        end
      end
      if(cal_en) begin
        cal_cnt <= (cal_cnt + 3'b001);
      end else begin
        if(io_din_vld) begin
          cal_cnt <= 3'b000;
        end
      end
      if(io_din_vld) begin
        shiftReg[8 : 1] <= io_dinA;
      end else begin
        if(cal_en) begin
          case(flag_bits)
            2'b00, 2'b11 : begin
              shiftReg <= {_zz_shiftReg[16],shiftReg[16 : 1]};
            end
            default : begin
              shiftReg <= {{_zz_shiftReg_1[7],sumShiftB},shiftReg[8 : 1]};
            end
          endcase
        end
      end
    end
  end

  always @(posedge clk) begin
    cal_en_regNext <= cal_en;
  end


endmodule
