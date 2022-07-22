// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vbooth4.h for the primary calling header

#include "verilated.h"

#include "Vbooth4___024root.h"

VL_INLINE_OPT void Vbooth4___024root___sequent__TOP__0(Vbooth4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root___sequent__TOP__0\n"); );
    // Init
    IData/*20:0*/ booth4__DOT__PositiveB;
    IData/*20:0*/ booth4__DOT__AddB;
    IData/*20:0*/ booth4__DOT__MinusB;
    // Body
    vlSelf->__Vdly__booth4__DOT__cal_cnt = vlSelf->booth4__DOT__cal_cnt;
    if (vlSelf->reset) {
        vlSelf->booth4__DOT__shiftReg = 0U;
        vlSelf->__Vdly__booth4__DOT__cal_cnt = 0U;
        vlSelf->booth4__DOT__Breg = 0U;
    } else {
        if (vlSelf->booth4__DOT__cal_en) {
            vlSelf->__Vdly__booth4__DOT__cal_cnt = 
                (7U & ((IData)(1U) + (IData)(vlSelf->booth4__DOT__cal_cnt)));
        } else if (vlSelf->io_din_vld) {
            vlSelf->__Vdly__booth4__DOT__cal_cnt = 0U;
        }
        if (vlSelf->io_din_vld) {
            vlSelf->booth4__DOT__shiftReg = ((IData)(vlSelf->io_dinA) 
                                             << 1U);
            vlSelf->booth4__DOT__Breg = vlSelf->io_dinB;
        } else if (vlSelf->booth4__DOT__cal_en) {
            vlSelf->booth4__DOT__shiftReg = VL_SHIFTRS_III(32,32,32, vlSelf->booth4__DOT___zz_aftershift_1, 2U);
        }
    }
    vlSelf->io_dout = (0x1fffffffU & (vlSelf->booth4__DOT__shiftReg 
                                      >> 1U));
    booth4__DOT__PositiveB = ((0x180000U & ((- (IData)(
                                                       (1U 
                                                        & (vlSelf->booth4__DOT__Breg 
                                                           >> 0x12U)))) 
                                            << 0x13U)) 
                              | vlSelf->booth4__DOT__Breg);
    booth4__DOT__AddB = (0x1fffffU & ((vlSelf->booth4__DOT__shiftReg 
                                       >> 0xbU) + booth4__DOT__PositiveB));
    booth4__DOT__MinusB = (0x1fffffU & ((vlSelf->booth4__DOT__shiftReg 
                                         >> 0xbU) + 
                                        (- booth4__DOT__PositiveB)));
    vlSelf->booth4__DOT___zz_aftershift_1 = ((((4U 
                                                & vlSelf->booth4__DOT__shiftReg)
                                                ? (
                                                   (2U 
                                                    & vlSelf->booth4__DOT__shiftReg)
                                                    ? 
                                                   ((1U 
                                                     & vlSelf->booth4__DOT__shiftReg)
                                                     ? 
                                                    (vlSelf->booth4__DOT__shiftReg 
                                                     >> 0xbU)
                                                     : booth4__DOT__MinusB)
                                                    : 
                                                   ((1U 
                                                     & vlSelf->booth4__DOT__shiftReg)
                                                     ? booth4__DOT__MinusB
                                                     : 
                                                    ((vlSelf->booth4__DOT__shiftReg 
                                                      >> 0xbU) 
                                                     + 
                                                     ((- booth4__DOT__PositiveB) 
                                                      << 1U))))
                                                : (
                                                   (2U 
                                                    & vlSelf->booth4__DOT__shiftReg)
                                                    ? 
                                                   ((1U 
                                                     & vlSelf->booth4__DOT__shiftReg)
                                                     ? 
                                                    ((vlSelf->booth4__DOT__shiftReg 
                                                      >> 0xbU) 
                                                     + 
                                                     (booth4__DOT__PositiveB 
                                                      << 1U))
                                                     : booth4__DOT__AddB)
                                                    : 
                                                   ((1U 
                                                     & vlSelf->booth4__DOT__shiftReg)
                                                     ? booth4__DOT__AddB
                                                     : 
                                                    (vlSelf->booth4__DOT__shiftReg 
                                                     >> 0xbU)))) 
                                              << 0xbU) 
                                             | (0x7ffU 
                                                & vlSelf->booth4__DOT__shiftReg));
}

VL_INLINE_OPT void Vbooth4___024root___sequent__TOP__1(Vbooth4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root___sequent__TOP__1\n"); );
    // Body
    vlSelf->booth4__DOT__cal_en_regNext = vlSelf->booth4__DOT__cal_en;
}

VL_INLINE_OPT void Vbooth4___024root___sequent__TOP__2(Vbooth4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root___sequent__TOP__2\n"); );
    // Body
    if (vlSelf->reset) {
        vlSelf->booth4__DOT__cal_en = 0U;
    } else if (vlSelf->io_din_vld) {
        vlSelf->booth4__DOT__cal_en = 1U;
    } else if ((4U == (IData)(vlSelf->booth4__DOT__cal_cnt))) {
        vlSelf->booth4__DOT__cal_en = 0U;
    }
    vlSelf->booth4__DOT__cal_cnt = vlSelf->__Vdly__booth4__DOT__cal_cnt;
    vlSelf->io_cal_finish = ((4U == (IData)(vlSelf->booth4__DOT__cal_cnt)) 
                             & (IData)(vlSelf->booth4__DOT__cal_en));
    vlSelf->io_dout_vld = ((~ (IData)(vlSelf->booth4__DOT__cal_en)) 
                           & (IData)(vlSelf->booth4__DOT__cal_en_regNext));
}

void Vbooth4___024root___eval(Vbooth4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root___eval\n"); );
    // Body
    if ((((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk))) 
         | ((IData)(vlSelf->reset) & (~ (IData)(vlSelf->__Vclklast__TOP__reset))))) {
        Vbooth4___024root___sequent__TOP__0(vlSelf);
    }
    if (((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk)))) {
        Vbooth4___024root___sequent__TOP__1(vlSelf);
    }
    if ((((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk))) 
         | ((IData)(vlSelf->reset) & (~ (IData)(vlSelf->__Vclklast__TOP__reset))))) {
        Vbooth4___024root___sequent__TOP__2(vlSelf);
    }
    // Final
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__reset = vlSelf->reset;
}

#ifdef VL_DEBUG
void Vbooth4___024root___eval_debug_assertions(Vbooth4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->io_din_vld & 0xfeU))) {
        Verilated::overWidthError("io_din_vld");}
    if (VL_UNLIKELY((vlSelf->io_dinA & 0xfc00U))) {
        Verilated::overWidthError("io_dinA");}
    if (VL_UNLIKELY((vlSelf->io_dinB & 0xfff80000U))) {
        Verilated::overWidthError("io_dinB");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
}
#endif  // VL_DEBUG
