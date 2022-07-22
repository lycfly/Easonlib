// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vbooth4.h for the primary calling header

#ifndef VERILATED_VBOOTH4___024ROOT_H_
#define VERILATED_VBOOTH4___024ROOT_H_  // guard

#include "verilated.h"

class Vbooth4__Syms;
VL_MODULE(Vbooth4___024root) {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_din_vld,0,0);
    VL_IN8(io_dinA,5,0);
    VL_IN8(io_dinB,3,0);
    VL_OUT8(io_dout_vld,0,0);
    VL_OUT8(io_cal_finish,0,0);
    CData/*3:0*/ booth4__DOT__Breg;
    CData/*5:0*/ booth4__DOT__PositiveB;
    CData/*5:0*/ booth4__DOT__AddB;
    CData/*5:0*/ booth4__DOT__MinusB;
    CData/*1:0*/ booth4__DOT__cal_cnt;
    CData/*0:0*/ booth4__DOT__cal_en;
    CData/*0:0*/ booth4__DOT__cal_en_regNext;
    CData/*1:0*/ __Vdly__booth4__DOT__cal_cnt;
    CData/*0:0*/ __Vclklast__TOP__clk;
    CData/*0:0*/ __Vclklast__TOP__reset;
    VL_OUT16(io_dout,9,0);
    SData/*12:0*/ booth4__DOT___zz_aftershift_1;
    SData/*12:0*/ booth4__DOT__shiftReg;
    VlUnpacked<CData/*0:0*/, 3> __Vm_traceActivity;

    // INTERNAL VARIABLES
    Vbooth4__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vbooth4___024root(Vbooth4__Syms* symsp, const char* name);
    ~Vbooth4___024root();
    VL_UNCOPYABLE(Vbooth4___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
