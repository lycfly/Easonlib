// Generator : SpinalHDL v1.7.1    git head : 0444bb76ab1d6e19f0ec46bc03c4769776deb7d5
// Component : restoring_div
// Git hash  : 01ad5fe19133a147ccd9661925b0448c43db0aa5

`timescale 1ns/1ps

module restoring_div (
  input               din_vld,
  input      [7:0]    dinA,
  input      [3:0]    dinB,
  output              dout_vld,
  output     [8:0]    quot,
  output     [3:0]    remainder,
  input               clk,
  input               reset
);

  wire       [7:0]    _zz_dinA_abs;
  wire       [7:0]    _zz_dinA_abs_1;
  wire       [7:0]    _zz_dinA_abs_2;
  wire       [0:0]    _zz_dinA_abs_3;
  wire       [3:0]    _zz_dinB_abs;
  wire       [3:0]    _zz_dinB_abs_1;
  wire       [3:0]    _zz_dinB_abs_2;
  wire       [0:0]    _zz_dinB_abs_3;
  wire       [3:0]    _zz_divisior;
  wire       [4:0]    _zz_p_r_minus_d;
  wire       [4:0]    _zz_p_r_minus_d_1;
  wire       [4:0]    _zz_p_r_minus_d_2;
  wire       [8:0]    _zz_quot;
  wire       [7:0]    _zz_quot_1;
  wire       [8:0]    _zz_quot_2;
  wire                sign_out;
  wire       [7:0]    dinA_abs;
  wire       [3:0]    dinB_abs;
  reg        [7:0]    quotient;
  reg        [4:0]    divisior;
  reg        [12:0]   p_remainder;
  wire       [12:0]   p_r_shift;
  wire       [4:0]    p_r_calpart;
  wire       [4:0]    p_r_minus_d;
  wire       [4:0]    p_r_part_next;
  reg        [2:0]    control_cnt;
  reg                 doing;
  wire                finish_pulse;
  wire                when_restoring_div_l76;
  wire                when_restoring_div_l76_1;
  wire                when_restoring_div_l76_2;
  wire                when_restoring_div_l76_3;
  wire                when_restoring_div_l76_4;
  wire                when_restoring_div_l76_5;
  wire                when_restoring_div_l76_6;
  wire                when_restoring_div_l76_7;
  wire       [7:0]    quot_reversed;
  reg                 finish_pulse_regNext;

  assign _zz_dinA_abs = (dinA[7] ? _zz_dinA_abs_1 : dinA);
  assign _zz_dinA_abs_1 = (~ dinA);
  assign _zz_dinA_abs_3 = dinA[7];
  assign _zz_dinA_abs_2 = {7'd0, _zz_dinA_abs_3};
  assign _zz_dinB_abs = (dinB[3] ? _zz_dinB_abs_1 : dinB);
  assign _zz_dinB_abs_1 = (~ dinB);
  assign _zz_dinB_abs_3 = dinB[3];
  assign _zz_dinB_abs_2 = {3'd0, _zz_dinB_abs_3};
  assign _zz_divisior = dinB_abs;
  assign _zz_p_r_minus_d = ($signed(_zz_p_r_minus_d_1) - $signed(_zz_p_r_minus_d_2));
  assign _zz_p_r_minus_d_1 = p_r_calpart;
  assign _zz_p_r_minus_d_2 = divisior;
  assign _zz_quot = {1'b1,_zz_quot_1};
  assign _zz_quot_1 = ((~ quot_reversed) + 8'h01);
  assign _zz_quot_2 = {1'b0,quot_reversed};
  assign sign_out = (dinA[7] ^ dinB[3]);
  assign dinA_abs = (_zz_dinA_abs + _zz_dinA_abs_2);
  assign dinB_abs = (_zz_dinB_abs + _zz_dinB_abs_2);
  assign p_r_shift = (p_remainder <<< 1);
  assign p_r_calpart = p_r_shift[12 : 8];
  assign p_r_minus_d = _zz_p_r_minus_d;
  assign p_r_part_next = (p_r_minus_d[4] ? p_r_calpart : p_r_minus_d);
  assign finish_pulse = (control_cnt == 3'b111);
  assign when_restoring_div_l76 = (control_cnt == 3'b000);
  assign when_restoring_div_l76_1 = (control_cnt == 3'b001);
  assign when_restoring_div_l76_2 = (control_cnt == 3'b010);
  assign when_restoring_div_l76_3 = (control_cnt == 3'b011);
  assign when_restoring_div_l76_4 = (control_cnt == 3'b100);
  assign when_restoring_div_l76_5 = (control_cnt == 3'b101);
  assign when_restoring_div_l76_6 = (control_cnt == 3'b110);
  assign when_restoring_div_l76_7 = (control_cnt == 3'b111);
  assign quot_reversed = {quotient[0],{quotient[1],{quotient[2],{quotient[3],{quotient[4],{quotient[5],{quotient[6],quotient[7]}}}}}}};
  assign remainder = p_remainder[11 : 8];
  assign quot = (sign_out ? _zz_quot : _zz_quot_2);
  assign dout_vld = finish_pulse_regNext;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      quotient <= 8'h0;
      divisior <= 5'h0;
      p_remainder <= 13'h0;
      control_cnt <= 3'b000;
      doing <= 1'b0;
      finish_pulse_regNext <= 1'b0;
    end else begin
      if(din_vld) begin
        divisior <= {1'd0, _zz_divisior};
      end
      if(din_vld) begin
        doing <= 1'b1;
      end else begin
        if(finish_pulse) begin
          doing <= 1'b0;
        end
      end
      if(din_vld) begin
        control_cnt <= 3'b000;
      end else begin
        if(doing) begin
          control_cnt <= (control_cnt + 3'b001);
        end else begin
          if(finish_pulse) begin
            control_cnt <= 3'b000;
          end
        end
      end
      if(din_vld) begin
        p_remainder <= {5'h0,dinA_abs};
      end else begin
        if(doing) begin
          p_remainder <= {p_r_part_next,p_r_shift[7 : 0]};
        end
      end
      if(din_vld) begin
        quotient[0] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76) begin
            quotient[0] <= (! p_r_minus_d[4]);
          end
        end
      end
      if(din_vld) begin
        quotient[1] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_1) begin
            quotient[1] <= (! p_r_minus_d[4]);
          end
        end
      end
      if(din_vld) begin
        quotient[2] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_2) begin
            quotient[2] <= (! p_r_minus_d[4]);
          end
        end
      end
      if(din_vld) begin
        quotient[3] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_3) begin
            quotient[3] <= (! p_r_minus_d[4]);
          end
        end
      end
      if(din_vld) begin
        quotient[4] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_4) begin
            quotient[4] <= (! p_r_minus_d[4]);
          end
        end
      end
      if(din_vld) begin
        quotient[5] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_5) begin
            quotient[5] <= (! p_r_minus_d[4]);
          end
        end
      end
      if(din_vld) begin
        quotient[6] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_6) begin
            quotient[6] <= (! p_r_minus_d[4]);
          end
        end
      end
      if(din_vld) begin
        quotient[7] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_7) begin
            quotient[7] <= (! p_r_minus_d[4]);
          end
        end
      end
      finish_pulse_regNext <= finish_pulse;
    end
  end


endmodule
