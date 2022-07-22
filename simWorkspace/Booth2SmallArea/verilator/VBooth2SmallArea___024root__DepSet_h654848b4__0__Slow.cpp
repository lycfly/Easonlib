// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VBooth2SmallArea.h for the primary calling header

#include "verilated.h"

#include "VBooth2SmallArea___024root.h"

VL_ATTR_COLD void VBooth2SmallArea___024root___settle__TOP__0(VBooth2SmallArea___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root___settle__TOP__0\n"); );
    // Body
    vlSelf->Booth2SmallArea__DOT___zz_shiftReg = vlSelf->Booth2SmallArea__DOT__shiftReg;
    vlSelf->Booth2SmallArea__DOT__flag_bits = (3U & vlSelf->Booth2SmallArea__DOT__shiftReg);
    vlSelf->io_dout = (0xffffU & (vlSelf->Booth2SmallArea__DOT__shiftReg 
                                  >> 1U));
    vlSelf->Booth2SmallArea__DOT___zz_sumShiftB = (0xffU 
                                                   & ((vlSelf->Booth2SmallArea__DOT__shiftReg 
                                                       >> 9U) 
                                                      + 
                                                      ((IData)(
                                                               (2U 
                                                                == 
                                                                (3U 
                                                                 & vlSelf->Booth2SmallArea__DOT__shiftReg)))
                                                        ? 
                                                       (- (IData)(vlSelf->io_dinB))
                                                        : (IData)(vlSelf->io_dinB))));
    vlSelf->io_dout_vld = ((~ (IData)(vlSelf->Booth2SmallArea__DOT__cal_en)) 
                           & (IData)(vlSelf->Booth2SmallArea__DOT__cal_en_regNext));
}

VL_ATTR_COLD void VBooth2SmallArea___024root___eval_initial(VBooth2SmallArea___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = (1U & (~ (IData)(vlSelf->clk)));
    vlSelf->__Vclklast__TOP__reset = (1U & (~ (IData)(vlSelf->reset)));
}

VL_ATTR_COLD void VBooth2SmallArea___024root___eval_settle(VBooth2SmallArea___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root___eval_settle\n"); );
    // Body
    VBooth2SmallArea___024root___settle__TOP__0(vlSelf);
}

VL_ATTR_COLD void VBooth2SmallArea___024root___final(VBooth2SmallArea___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root___final\n"); );
}

VL_ATTR_COLD void VBooth2SmallArea___024root___ctor_var_reset(VBooth2SmallArea___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->io_din_vld = VL_RAND_RESET_I(1);
    vlSelf->io_dinA = VL_RAND_RESET_I(8);
    vlSelf->io_dinB = VL_RAND_RESET_I(8);
    vlSelf->io_dout_vld = VL_RAND_RESET_I(1);
    vlSelf->io_dout = VL_RAND_RESET_I(16);
    vlSelf->clk = 0;
    vlSelf->reset = 0;
    vlSelf->Booth2SmallArea__DOT___zz_sumShiftB = VL_RAND_RESET_I(8);
    vlSelf->Booth2SmallArea__DOT___zz_shiftReg = VL_RAND_RESET_I(17);
    vlSelf->Booth2SmallArea__DOT__shiftReg = VL_RAND_RESET_I(17);
    vlSelf->Booth2SmallArea__DOT__flag_bits = VL_RAND_RESET_I(2);
    vlSelf->Booth2SmallArea__DOT__cal_cnt = VL_RAND_RESET_I(3);
    vlSelf->Booth2SmallArea__DOT__cal_en = VL_RAND_RESET_I(1);
    vlSelf->Booth2SmallArea__DOT__cal_en_regNext = VL_RAND_RESET_I(1);
    vlSelf->__Vdly__Booth2SmallArea__DOT__cal_cnt = VL_RAND_RESET_I(3);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = VL_RAND_RESET_I(1);
    }
}
