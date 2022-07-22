// Generator : SpinalHDL v1.7.1    git head : 0444bb76ab1d6e19f0ec46bc03c4769776deb7d5
// Component : restoring_div
// Git hash  : 01ad5fe19133a147ccd9661925b0448c43db0aa5

`timescale 1ns/1ps

module restoring_div (
  input               din_vld,
  input      [27:0]   dinA,
  input      [9:0]    dinB,
  output              dout_vld,
  output     [28:0]   quot,
  output     [9:0]    remainder,
  input               clk,
  input               resetn
);

  wire       [27:0]   _zz_dinA_abs;
  wire       [27:0]   _zz_dinA_abs_1;
  wire       [27:0]   _zz_dinA_abs_2;
  wire       [0:0]    _zz_dinA_abs_3;
  wire       [9:0]    _zz_dinB_abs;
  wire       [9:0]    _zz_dinB_abs_1;
  wire       [9:0]    _zz_dinB_abs_2;
  wire       [0:0]    _zz_dinB_abs_3;
  wire       [9:0]    _zz_divisior;
  wire       [10:0]   _zz_p_r_minus_d;
  wire       [10:0]   _zz_p_r_minus_d_1;
  wire       [10:0]   _zz_p_r_minus_d_2;
  wire                _zz_quot_reversed;
  wire       [0:0]    _zz_quot_reversed_1;
  wire       [16:0]   _zz_quot_reversed_2;
  wire                _zz_quot_reversed_3;
  wire       [0:0]    _zz_quot_reversed_4;
  wire       [5:0]    _zz_quot_reversed_5;
  wire       [28:0]   _zz_quot;
  wire       [27:0]   _zz_quot_1;
  wire       [28:0]   _zz_quot_2;
  wire                sign_out;
  wire       [27:0]   dinA_abs;
  wire       [9:0]    dinB_abs;
  reg        [27:0]   quotient;
  reg        [10:0]   divisior;
  reg        [38:0]   p_remainder;
  wire       [38:0]   p_r_shift;
  wire       [10:0]   p_r_calpart;
  wire       [10:0]   p_r_minus_d;
  wire       [10:0]   p_r_part_next;
  reg        [4:0]    control_cnt;
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
  wire                when_restoring_div_l76_8;
  wire                when_restoring_div_l76_9;
  wire                when_restoring_div_l76_10;
  wire                when_restoring_div_l76_11;
  wire                when_restoring_div_l76_12;
  wire                when_restoring_div_l76_13;
  wire                when_restoring_div_l76_14;
  wire                when_restoring_div_l76_15;
  wire                when_restoring_div_l76_16;
  wire                when_restoring_div_l76_17;
  wire                when_restoring_div_l76_18;
  wire                when_restoring_div_l76_19;
  wire                when_restoring_div_l76_20;
  wire                when_restoring_div_l76_21;
  wire                when_restoring_div_l76_22;
  wire                when_restoring_div_l76_23;
  wire                when_restoring_div_l76_24;
  wire                when_restoring_div_l76_25;
  wire                when_restoring_div_l76_26;
  wire                when_restoring_div_l76_27;
  wire       [27:0]   quot_reversed;
  reg                 finish_pulse_regNext;

  assign _zz_dinA_abs = (dinA[27] ? _zz_dinA_abs_1 : dinA);
  assign _zz_dinA_abs_1 = (~ dinA);
  assign _zz_dinA_abs_3 = dinA[27];
  assign _zz_dinA_abs_2 = {27'd0, _zz_dinA_abs_3};
  assign _zz_dinB_abs = (dinB[9] ? _zz_dinB_abs_1 : dinB);
  assign _zz_dinB_abs_1 = (~ dinB);
  assign _zz_dinB_abs_3 = dinB[9];
  assign _zz_dinB_abs_2 = {9'd0, _zz_dinB_abs_3};
  assign _zz_divisior = dinB_abs;
  assign _zz_p_r_minus_d = ($signed(_zz_p_r_minus_d_1) - $signed(_zz_p_r_minus_d_2));
  assign _zz_p_r_minus_d_1 = p_r_calpart;
  assign _zz_p_r_minus_d_2 = divisior;
  assign _zz_quot = {1'b1,_zz_quot_1};
  assign _zz_quot_1 = ((~ quot_reversed) + 28'h0000001);
  assign _zz_quot_2 = {1'b0,quot_reversed};
  assign _zz_quot_reversed = quotient[9];
  assign _zz_quot_reversed_1 = quotient[10];
  assign _zz_quot_reversed_2 = {quotient[11],{quotient[12],{quotient[13],{quotient[14],{quotient[15],{quotient[16],{quotient[17],{quotient[18],{quotient[19],{_zz_quot_reversed_3,{_zz_quot_reversed_4,_zz_quot_reversed_5}}}}}}}}}}};
  assign _zz_quot_reversed_3 = quotient[20];
  assign _zz_quot_reversed_4 = quotient[21];
  assign _zz_quot_reversed_5 = {quotient[22],{quotient[23],{quotient[24],{quotient[25],{quotient[26],quotient[27]}}}}};
  assign sign_out = (dinA[27] ^ dinB[9]);
  assign dinA_abs = (_zz_dinA_abs + _zz_dinA_abs_2);
  assign dinB_abs = (_zz_dinB_abs + _zz_dinB_abs_2);
  assign p_r_shift = (p_remainder <<< 1);
  assign p_r_calpart = p_r_shift[38 : 28];
  assign p_r_minus_d = _zz_p_r_minus_d;
  assign p_r_part_next = (p_r_minus_d[10] ? p_r_calpart : p_r_minus_d);
  assign finish_pulse = (control_cnt == 5'h1b);
  assign when_restoring_div_l76 = (control_cnt == 5'h0);
  assign when_restoring_div_l76_1 = (control_cnt == 5'h01);
  assign when_restoring_div_l76_2 = (control_cnt == 5'h02);
  assign when_restoring_div_l76_3 = (control_cnt == 5'h03);
  assign when_restoring_div_l76_4 = (control_cnt == 5'h04);
  assign when_restoring_div_l76_5 = (control_cnt == 5'h05);
  assign when_restoring_div_l76_6 = (control_cnt == 5'h06);
  assign when_restoring_div_l76_7 = (control_cnt == 5'h07);
  assign when_restoring_div_l76_8 = (control_cnt == 5'h08);
  assign when_restoring_div_l76_9 = (control_cnt == 5'h09);
  assign when_restoring_div_l76_10 = (control_cnt == 5'h0a);
  assign when_restoring_div_l76_11 = (control_cnt == 5'h0b);
  assign when_restoring_div_l76_12 = (control_cnt == 5'h0c);
  assign when_restoring_div_l76_13 = (control_cnt == 5'h0d);
  assign when_restoring_div_l76_14 = (control_cnt == 5'h0e);
  assign when_restoring_div_l76_15 = (control_cnt == 5'h0f);
  assign when_restoring_div_l76_16 = (control_cnt == 5'h10);
  assign when_restoring_div_l76_17 = (control_cnt == 5'h11);
  assign when_restoring_div_l76_18 = (control_cnt == 5'h12);
  assign when_restoring_div_l76_19 = (control_cnt == 5'h13);
  assign when_restoring_div_l76_20 = (control_cnt == 5'h14);
  assign when_restoring_div_l76_21 = (control_cnt == 5'h15);
  assign when_restoring_div_l76_22 = (control_cnt == 5'h16);
  assign when_restoring_div_l76_23 = (control_cnt == 5'h17);
  assign when_restoring_div_l76_24 = (control_cnt == 5'h18);
  assign when_restoring_div_l76_25 = (control_cnt == 5'h19);
  assign when_restoring_div_l76_26 = (control_cnt == 5'h1a);
  assign when_restoring_div_l76_27 = (control_cnt == 5'h1b);
  assign quot_reversed = {quotient[0],{quotient[1],{quotient[2],{quotient[3],{quotient[4],{quotient[5],{quotient[6],{quotient[7],{quotient[8],{_zz_quot_reversed,{_zz_quot_reversed_1,_zz_quot_reversed_2}}}}}}}}}}};
  assign remainder = p_remainder[37 : 28];
  assign quot = (sign_out ? _zz_quot : _zz_quot_2);
  assign dout_vld = finish_pulse_regNext;
  always @(posedge clk or negedge resetn) begin
    if(!resetn) begin
      quotient <= 28'h0;
      divisior <= 11'h0;
      p_remainder <= 39'h0;
      control_cnt <= 5'h0;
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
        control_cnt <= 5'h0;
      end else begin
        if(doing) begin
          control_cnt <= (control_cnt + 5'h01);
        end else begin
          if(finish_pulse) begin
            control_cnt <= 5'h0;
          end
        end
      end
      if(din_vld) begin
        p_remainder <= {11'h0,dinA_abs};
      end else begin
        if(doing) begin
          p_remainder <= {p_r_part_next,p_r_shift[27 : 0]};
        end
      end
      if(din_vld) begin
        quotient[0] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76) begin
            quotient[0] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[1] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_1) begin
            quotient[1] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[2] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_2) begin
            quotient[2] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[3] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_3) begin
            quotient[3] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[4] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_4) begin
            quotient[4] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[5] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_5) begin
            quotient[5] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[6] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_6) begin
            quotient[6] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[7] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_7) begin
            quotient[7] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[8] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_8) begin
            quotient[8] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[9] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_9) begin
            quotient[9] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[10] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_10) begin
            quotient[10] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[11] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_11) begin
            quotient[11] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[12] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_12) begin
            quotient[12] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[13] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_13) begin
            quotient[13] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[14] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_14) begin
            quotient[14] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[15] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_15) begin
            quotient[15] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[16] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_16) begin
            quotient[16] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[17] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_17) begin
            quotient[17] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[18] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_18) begin
            quotient[18] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[19] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_19) begin
            quotient[19] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[20] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_20) begin
            quotient[20] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[21] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_21) begin
            quotient[21] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[22] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_22) begin
            quotient[22] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[23] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_23) begin
            quotient[23] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[24] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_24) begin
            quotient[24] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[25] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_25) begin
            quotient[25] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[26] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_26) begin
            quotient[26] <= (! p_r_minus_d[10]);
          end
        end
      end
      if(din_vld) begin
        quotient[27] <= 1'b0;
      end else begin
        if(doing) begin
          if(when_restoring_div_l76_27) begin
            quotient[27] <= (! p_r_minus_d[10]);
          end
        end
      end
      finish_pulse_regNext <= finish_pulse;
    end
  end


endmodule
