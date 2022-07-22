// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VBooth2SmallArea.h for the primary calling header

#ifndef VERILATED_VBOOTH2SMALLAREA___024ROOT_H_
#define VERILATED_VBOOTH2SMALLAREA___024ROOT_H_  // guard

#include "verilated.h"

class VBooth2SmallArea__Syms;
VL_MODULE(VBooth2SmallArea___024root) {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_din_vld,0,0);
    VL_IN8(io_dinA,7,0);
    VL_IN8(io_dinB,7,0);
    VL_OUT8(io_dout_vld,0,0);
    CData/*7:0*/ Booth2SmallArea__DOT___zz_sumShiftB;
    CData/*1:0*/ Booth2SmallArea__DOT__flag_bits;
    CData/*2:0*/ Booth2SmallArea__DOT__cal_cnt;
    CData/*0:0*/ Booth2SmallArea__DOT__cal_en;
    CData/*0:0*/ Booth2SmallArea__DOT__cal_en_regNext;
    CData/*2:0*/ __Vdly__Booth2SmallArea__DOT__cal_cnt;
    CData/*0:0*/ __Vclklast__TOP__clk;
    CData/*0:0*/ __Vclklast__TOP__reset;
    VL_OUT16(io_dout,15,0);
    IData/*16:0*/ Booth2SmallArea__DOT___zz_shiftReg;
    IData/*16:0*/ Booth2SmallArea__DOT__shiftReg;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;

    // INTERNAL VARIABLES
    VBooth2SmallArea__Syms* const vlSymsp;

    // CONSTRUCTORS
    VBooth2SmallArea___024root(VBooth2SmallArea__Syms* symsp, const char* name);
    ~VBooth2SmallArea___024root();
    VL_UNCOPYABLE(VBooth2SmallArea___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
