// Generator : SpinalHDL v1.7.0    git head : eca519e78d4e6022e34911ec300a432ed9db8220
// Component : booth4
// Git hash  : 6bea6bb7df6fd9185f6024fe72178a5f7d526d6e

`timescale 1ns/1ps

module booth4 (
  input               io_din_vld,
  input      [7:0]    io_dinA,
  input      [7:0]    io_dinB,
  output              io_dout_vld,
  output              io_cal_finish,
  output     [15:0]   io_dout,
  input               clk,
  input               resetn
);

  wire       [18:0]   _zz_aftershift;
  wire       [18:0]   _zz_aftershift_1;
  reg        [7:0]    Breg;
  reg        [18:0]   shiftReg;
  wire       [2:0]    flag_bits;
  wire       [9:0]    NegativeB;
  wire       [9:0]    Negative2B;
  wire       [9:0]    PositiveB;
  wire       [9:0]    Positive2B;
  wire       [9:0]    AddB;
  wire       [9:0]    Add2B;
  wire       [9:0]    MinusB;
  wire       [9:0]    Minus2B;
  reg        [1:0]    cal_cnt;
  reg                 cal_en;
  wire       [8:0]    shiftReg_low;
  wire       [9:0]    shiftReg_high;
  wire                cal_cnt_ov_flag;
  reg        [9:0]    beforeshift;
  wire       [18:0]   aftershift;
  reg                 cal_en_regNext;

  assign _zz_aftershift = ($signed(_zz_aftershift_1) >>> 2);
  assign _zz_aftershift_1 = {beforeshift,shiftReg_low};
  assign flag_bits = shiftReg[2 : 0];
  assign NegativeB = (- PositiveB);
  assign PositiveB = {{2{Breg[7]}}, Breg};
  assign Negative2B = (NegativeB <<< 1);
  assign Positive2B = (PositiveB <<< 1);
  assign shiftReg_low = shiftReg[8 : 0];
  assign shiftReg_high = shiftReg[18 : 9];
  assign AddB = ($signed(shiftReg_high) + $signed(PositiveB));
  assign Add2B = ($signed(shiftReg_high) + $signed(Positive2B));
  assign MinusB = ($signed(shiftReg_high) + $signed(NegativeB));
  assign Minus2B = ($signed(shiftReg_high) + $signed(Negative2B));
  assign cal_cnt_ov_flag = (cal_cnt == 2'b11);
  assign io_cal_finish = (cal_cnt_ov_flag && cal_en);
  always @(*) begin
    case(flag_bits)
      3'b000, 3'b111 : begin
        beforeshift = shiftReg_high;
      end
      3'b001, 3'b010 : begin
        beforeshift = AddB;
      end
      3'b101, 3'b110 : begin
        beforeshift = MinusB;
      end
      3'b011 : begin
        beforeshift = Add2B;
      end
      default : begin
        beforeshift = Minus2B;
      end
    endcase
  end

  assign aftershift = _zz_aftershift;
  assign io_dout_vld = ((! cal_en) && cal_en_regNext);
  assign io_dout = shiftReg[16 : 1];
  always @(posedge clk or negedge resetn) begin
    if(!resetn) begin
      Breg <= 8'h0;
      shiftReg <= 19'h0;
      cal_cnt <= 2'b00;
      cal_en <= 1'b0;
    end else begin
      if(io_din_vld) begin
        cal_en <= 1'b1;
      end else begin
        if(cal_cnt_ov_flag) begin
          cal_en <= 1'b0;
        end
      end
      if(cal_en) begin
        cal_cnt <= (cal_cnt + 2'b01);
      end else begin
        if(io_din_vld) begin
          cal_cnt <= 2'b00;
        end
      end
      if(io_din_vld) begin
        shiftReg <= {{10'h0,io_dinA},1'b0};
        Breg <= io_dinB;
      end else begin
        if(cal_en) begin
          shiftReg <= aftershift;
        end
      end
    end
  end

  always @(posedge clk) begin
    cal_en_regNext <= cal_en;
  end


endmodule
