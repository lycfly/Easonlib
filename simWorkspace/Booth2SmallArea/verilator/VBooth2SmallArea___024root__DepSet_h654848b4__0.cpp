// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VBooth2SmallArea.h for the primary calling header

#include "verilated.h"

#include "VBooth2SmallArea___024root.h"

VL_INLINE_OPT void VBooth2SmallArea___024root___sequent__TOP__0(VBooth2SmallArea___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root___sequent__TOP__0\n"); );
    // Init
    IData/*16:0*/ __Vdly__Booth2SmallArea__DOT__shiftReg;
    // Body
    vlSelf->__Vdly__Booth2SmallArea__DOT__cal_cnt = vlSelf->Booth2SmallArea__DOT__cal_cnt;
    __Vdly__Booth2SmallArea__DOT__shiftReg = vlSelf->Booth2SmallArea__DOT__shiftReg;
    if (vlSelf->reset) {
        __Vdly__Booth2SmallArea__DOT__shiftReg = 0U;
        vlSelf->__Vdly__Booth2SmallArea__DOT__cal_cnt = 0U;
    } else {
        if (vlSelf->Booth2SmallArea__DOT__cal_en) {
            vlSelf->__Vdly__Booth2SmallArea__DOT__cal_cnt 
                = (7U & ((IData)(1U) + (IData)(vlSelf->Booth2SmallArea__DOT__cal_cnt)));
        } else if (vlSelf->io_din_vld) {
            vlSelf->__Vdly__Booth2SmallArea__DOT__cal_cnt = 0U;
        }
        if (vlSelf->io_din_vld) {
            __Vdly__Booth2SmallArea__DOT__shiftReg 
                = ((0x1fe01U & __Vdly__Booth2SmallArea__DOT__shiftReg) 
                   | ((IData)(vlSelf->io_dinA) << 1U));
        } else if (vlSelf->Booth2SmallArea__DOT__cal_en) {
            __Vdly__Booth2SmallArea__DOT__shiftReg 
                = (((0U == (IData)(vlSelf->Booth2SmallArea__DOT__flag_bits)) 
                    | (3U == (IData)(vlSelf->Booth2SmallArea__DOT__flag_bits)))
                    ? ((0x10000U & vlSelf->Booth2SmallArea__DOT___zz_shiftReg) 
                       | (0xffffU & (vlSelf->Booth2SmallArea__DOT__shiftReg 
                                     >> 1U))) : ((0x10000U 
                                                  & ((IData)(vlSelf->Booth2SmallArea__DOT___zz_sumShiftB) 
                                                     << 9U)) 
                                                 | (((IData)(vlSelf->Booth2SmallArea__DOT___zz_sumShiftB) 
                                                     << 8U) 
                                                    | (0xffU 
                                                       & (vlSelf->Booth2SmallArea__DOT__shiftReg 
                                                          >> 1U)))));
        }
    }
    vlSelf->Booth2SmallArea__DOT__shiftReg = __Vdly__Booth2SmallArea__DOT__shiftReg;
    vlSelf->Booth2SmallArea__DOT___zz_shiftReg = vlSelf->Booth2SmallArea__DOT__shiftReg;
    vlSelf->Booth2SmallArea__DOT__flag_bits = (3U & vlSelf->Booth2SmallArea__DOT__shiftReg);
    vlSelf->io_dout = (0xffffU & (vlSelf->Booth2SmallArea__DOT__shiftReg 
                                  >> 1U));
}

VL_INLINE_OPT void VBooth2SmallArea___024root___sequent__TOP__1(VBooth2SmallArea___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root___sequent__TOP__1\n"); );
    // Body
    vlSelf->Booth2SmallArea__DOT__cal_en_regNext = vlSelf->Booth2SmallArea__DOT__cal_en;
}

VL_INLINE_OPT void VBooth2SmallArea___024root___combo__TOP__0(VBooth2SmallArea___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root___combo__TOP__0\n"); );
    // Body
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
}

VL_INLINE_OPT void VBooth2SmallArea___024root___sequent__TOP__2(VBooth2SmallArea___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root___sequent__TOP__2\n"); );
    // Body
    if (vlSelf->reset) {
        vlSelf->Booth2SmallArea__DOT__cal_en = 0U;
    } else if (vlSelf->io_din_vld) {
        vlSelf->Booth2SmallArea__DOT__cal_en = 1U;
    } else if ((7U == (IData)(vlSelf->Booth2SmallArea__DOT__cal_cnt))) {
        vlSelf->Booth2SmallArea__DOT__cal_en = 0U;
    }
    vlSelf->Booth2SmallArea__DOT__cal_cnt = vlSelf->__Vdly__Booth2SmallArea__DOT__cal_cnt;
    vlSelf->io_dout_vld = ((~ (IData)(vlSelf->Booth2SmallArea__DOT__cal_en)) 
                           & (IData)(vlSelf->Booth2SmallArea__DOT__cal_en_regNext));
}

void VBooth2SmallArea___024root___eval(VBooth2SmallArea___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root___eval\n"); );
    // Body
    if ((((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk))) 
         | ((IData)(vlSelf->reset) & (~ (IData)(vlSelf->__Vclklast__TOP__reset))))) {
        VBooth2SmallArea___024root___sequent__TOP__0(vlSelf);
    }
    if (((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk)))) {
        VBooth2SmallArea___024root___sequent__TOP__1(vlSelf);
    }
    VBooth2SmallArea___024root___combo__TOP__0(vlSelf);
    if ((((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk))) 
         | ((IData)(vlSelf->reset) & (~ (IData)(vlSelf->__Vclklast__TOP__reset))))) {
        VBooth2SmallArea___024root___sequent__TOP__2(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
    }
    // Final
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__reset = vlSelf->reset;
}

#ifdef VL_DEBUG
void VBooth2SmallArea___024root___eval_debug_assertions(VBooth2SmallArea___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->io_din_vld & 0xfeU))) {
        Verilated::overWidthError("io_din_vld");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
}
#endif  // VL_DEBUG
