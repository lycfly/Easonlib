// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vrestoring_div.h for the primary calling header

#ifndef VERILATED_VRESTORING_DIV___024ROOT_H_
#define VERILATED_VRESTORING_DIV___024ROOT_H_  // guard

#include "verilated.h"

class Vrestoring_div__Syms;
VL_MODULE(Vrestoring_div___024root) {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(din_vld,0,0);
    VL_IN8(dinA,5,0);
    VL_IN8(dinB,3,0);
    VL_OUT8(dout_vld,0,0);
    VL_OUT8(quot,6,0);
    VL_OUT8(remainder,3,0);
    CData/*4:0*/ restoring_div__DOT___zz_p_r_minus_d;
    CData/*5:0*/ restoring_div__DOT__quotient;
    CData/*4:0*/ restoring_div__DOT__divisior;
    CData/*4:0*/ restoring_div__DOT__p_r_part_next;
    CData/*2:0*/ restoring_div__DOT__control_cnt;
    CData/*0:0*/ restoring_div__DOT__doing;
    CData/*0:0*/ restoring_div__DOT__finish_pulse;
    CData/*0:0*/ restoring_div__DOT__when_restoring_div_l74;
    CData/*0:0*/ restoring_div__DOT__when_restoring_div_l74_1;
    CData/*0:0*/ restoring_div__DOT__when_restoring_div_l74_2;
    CData/*0:0*/ restoring_div__DOT__when_restoring_div_l74_3;
    CData/*0:0*/ restoring_div__DOT__when_restoring_div_l74_4;
    CData/*2:0*/ __Vdly__restoring_div__DOT__control_cnt;
    CData/*0:0*/ __Vclklast__TOP__clk;
    CData/*0:0*/ __Vclklast__TOP__reset;
    SData/*10:0*/ restoring_div__DOT__p_remainder;
    SData/*10:0*/ restoring_div__DOT__p_r_shift;

    // INTERNAL VARIABLES
    Vrestoring_div__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vrestoring_div___024root(Vrestoring_div__Syms* symsp, const char* name);
    ~Vrestoring_div___024root();
    VL_UNCOPYABLE(Vrestoring_div___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
