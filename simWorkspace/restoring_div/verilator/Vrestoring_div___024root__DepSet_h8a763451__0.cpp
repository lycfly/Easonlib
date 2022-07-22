// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vrestoring_div.h for the primary calling header

#include "verilated.h"

#include "Vrestoring_div___024root.h"

VL_INLINE_OPT void Vrestoring_div___024root___sequent__TOP__0(Vrestoring_div___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root___sequent__TOP__0\n"); );
    // Body
    vlSelf->__Vdly__restoring_div__DOT__control_cnt 
        = vlSelf->restoring_div__DOT__control_cnt;
    if (vlSelf->reset) {
        vlSelf->restoring_div__DOT__divisior = 0U;
    } else if (vlSelf->din_vld) {
        vlSelf->restoring_div__DOT__divisior = (0xfU 
                                                & (((8U 
                                                     & (IData)(vlSelf->dinB))
                                                     ? 
                                                    (~ (IData)(vlSelf->dinB))
                                                     : (IData)(vlSelf->dinB)) 
                                                   + 
                                                   (1U 
                                                    & ((IData)(vlSelf->dinB) 
                                                       >> 3U))));
    }
    vlSelf->restoring_div__DOT__finish_pulse_regNext 
        = ((~ (IData)(vlSelf->reset)) & (7U == (IData)(vlSelf->restoring_div__DOT__control_cnt)));
    if (vlSelf->reset) {
        vlSelf->restoring_div__DOT__quotient = 0U;
        vlSelf->restoring_div__DOT__p_remainder = 0U;
        vlSelf->__Vdly__restoring_div__DOT__control_cnt = 0U;
    } else if (vlSelf->din_vld) {
        vlSelf->__Vdly__restoring_div__DOT__control_cnt = 0U;
        vlSelf->restoring_div__DOT__p_remainder = (0xffU 
                                                   & (((0x80U 
                                                        & (IData)(vlSelf->dinA))
                                                        ? 
                                                       (~ (IData)(vlSelf->dinA))
                                                        : (IData)(vlSelf->dinA)) 
                                                      + 
                                                      (1U 
                                                       & ((IData)(vlSelf->dinA) 
                                                          >> 7U))));
        vlSelf->restoring_div__DOT__quotient = (0xfeU 
                                                & (IData)(vlSelf->restoring_div__DOT__quotient));
        vlSelf->restoring_div__DOT__quotient = (0xfdU 
                                                & (IData)(vlSelf->restoring_div__DOT__quotient));
        vlSelf->restoring_div__DOT__quotient = (0xfbU 
                                                & (IData)(vlSelf->restoring_div__DOT__quotient));
        vlSelf->restoring_div__DOT__quotient = (0xf7U 
                                                & (IData)(vlSelf->restoring_div__DOT__quotient));
        vlSelf->restoring_div__DOT__quotient = (0xefU 
                                                & (IData)(vlSelf->restoring_div__DOT__quotient));
        vlSelf->restoring_div__DOT__quotient = (0xdfU 
                                                & (IData)(vlSelf->restoring_div__DOT__quotient));
        vlSelf->restoring_div__DOT__quotient = (0xbfU 
                                                & (IData)(vlSelf->restoring_div__DOT__quotient));
        vlSelf->restoring_div__DOT__quotient = (0x7fU 
                                                & (IData)(vlSelf->restoring_div__DOT__quotient));
    } else if (vlSelf->restoring_div__DOT__doing) {
        vlSelf->__Vdly__restoring_div__DOT__control_cnt 
            = (7U & ((IData)(1U) + (IData)(vlSelf->restoring_div__DOT__control_cnt)));
        vlSelf->restoring_div__DOT__p_remainder = (
                                                   ((IData)(vlSelf->restoring_div__DOT__p_r_part_next) 
                                                    << 8U) 
                                                   | (0xffU 
                                                      & (IData)(vlSelf->restoring_div__DOT__p_r_shift)));
        if (vlSelf->restoring_div__DOT__when_restoring_div_l76) {
            vlSelf->restoring_div__DOT__quotient = 
                ((0xfeU & (IData)(vlSelf->restoring_div__DOT__quotient)) 
                 | (1U & (~ ((IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d) 
                             >> 4U))));
        }
        if (vlSelf->restoring_div__DOT__when_restoring_div_l76_1) {
            vlSelf->restoring_div__DOT__quotient = 
                ((0xfdU & (IData)(vlSelf->restoring_div__DOT__quotient)) 
                 | (2U & ((~ ((IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d) 
                              >> 4U)) << 1U)));
        }
        if (vlSelf->restoring_div__DOT__when_restoring_div_l76_2) {
            vlSelf->restoring_div__DOT__quotient = 
                ((0xfbU & (IData)(vlSelf->restoring_div__DOT__quotient)) 
                 | (4U & ((~ ((IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d) 
                              >> 4U)) << 2U)));
        }
        if (vlSelf->restoring_div__DOT__when_restoring_div_l76_3) {
            vlSelf->restoring_div__DOT__quotient = 
                ((0xf7U & (IData)(vlSelf->restoring_div__DOT__quotient)) 
                 | (8U & ((~ ((IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d) 
                              >> 4U)) << 3U)));
        }
        if (vlSelf->restoring_div__DOT__when_restoring_div_l76_4) {
            vlSelf->restoring_div__DOT__quotient = 
                ((0xefU & (IData)(vlSelf->restoring_div__DOT__quotient)) 
                 | (0x10U & ((~ ((IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d) 
                                 >> 4U)) << 4U)));
        }
        if (vlSelf->restoring_div__DOT__when_restoring_div_l76_5) {
            vlSelf->restoring_div__DOT__quotient = 
                ((0xdfU & (IData)(vlSelf->restoring_div__DOT__quotient)) 
                 | (0x20U & ((~ ((IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d) 
                                 >> 4U)) << 5U)));
        }
        if (vlSelf->restoring_div__DOT__when_restoring_div_l76_6) {
            vlSelf->restoring_div__DOT__quotient = 
                ((0xbfU & (IData)(vlSelf->restoring_div__DOT__quotient)) 
                 | (0x40U & ((~ ((IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d) 
                                 >> 4U)) << 6U)));
        }
        if (vlSelf->restoring_div__DOT__finish_pulse) {
            vlSelf->restoring_div__DOT__quotient = 
                ((0x7fU & (IData)(vlSelf->restoring_div__DOT__quotient)) 
                 | (0x80U & ((~ ((IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d) 
                                 >> 4U)) << 7U)));
        }
    } else if (vlSelf->restoring_div__DOT__finish_pulse) {
        vlSelf->__Vdly__restoring_div__DOT__control_cnt = 0U;
    }
}

VL_INLINE_OPT void Vrestoring_div___024root___sequent__TOP__1(Vrestoring_div___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root___sequent__TOP__1\n"); );
    // Body
    vlSelf->dout_vld = vlSelf->restoring_div__DOT__finish_pulse_regNext;
    vlSelf->restoring_div__DOT__quot_reversed = ((0x80U 
                                                  & ((IData)(vlSelf->restoring_div__DOT__quotient) 
                                                     << 7U)) 
                                                 | ((0x40U 
                                                     & ((IData)(vlSelf->restoring_div__DOT__quotient) 
                                                        << 5U)) 
                                                    | ((0x20U 
                                                        & ((IData)(vlSelf->restoring_div__DOT__quotient) 
                                                           << 3U)) 
                                                       | ((0x10U 
                                                           & ((IData)(vlSelf->restoring_div__DOT__quotient) 
                                                              << 1U)) 
                                                          | ((8U 
                                                              & ((IData)(vlSelf->restoring_div__DOT__quotient) 
                                                                 >> 1U)) 
                                                             | ((4U 
                                                                 & ((IData)(vlSelf->restoring_div__DOT__quotient) 
                                                                    >> 3U)) 
                                                                | ((2U 
                                                                    & ((IData)(vlSelf->restoring_div__DOT__quotient) 
                                                                       >> 5U)) 
                                                                   | (1U 
                                                                      & ((IData)(vlSelf->restoring_div__DOT__quotient) 
                                                                         >> 7U)))))))));
    vlSelf->restoring_div__DOT__p_r_shift = (0x1fffU 
                                             & ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                                << 1U));
    vlSelf->remainder = (0xfU & ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                 >> 8U));
    vlSelf->restoring_div__DOT___zz_p_r_minus_d = (0x1fU 
                                                   & ((0x1fU 
                                                       & ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                                          >> 7U)) 
                                                      - (IData)(vlSelf->restoring_div__DOT__divisior)));
    if (vlSelf->reset) {
        vlSelf->restoring_div__DOT__doing = 0U;
    } else if (vlSelf->din_vld) {
        vlSelf->restoring_div__DOT__doing = 1U;
    } else if ((7U == (IData)(vlSelf->restoring_div__DOT__control_cnt))) {
        vlSelf->restoring_div__DOT__doing = 0U;
    }
    vlSelf->restoring_div__DOT__p_r_part_next = (0x1fU 
                                                 & ((0x10U 
                                                     & (IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d))
                                                     ? 
                                                    (0x1fU 
                                                     & ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                                        >> 7U))
                                                     : (IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d)));
    vlSelf->restoring_div__DOT__control_cnt = vlSelf->__Vdly__restoring_div__DOT__control_cnt;
    vlSelf->restoring_div__DOT__finish_pulse = (7U 
                                                == (IData)(vlSelf->restoring_div__DOT__control_cnt));
    vlSelf->restoring_div__DOT__when_restoring_div_l76 
        = (0U == (IData)(vlSelf->restoring_div__DOT__control_cnt));
    vlSelf->restoring_div__DOT__when_restoring_div_l76_1 
        = (1U == (IData)(vlSelf->restoring_div__DOT__control_cnt));
    vlSelf->restoring_div__DOT__when_restoring_div_l76_2 
        = (2U == (IData)(vlSelf->restoring_div__DOT__control_cnt));
    vlSelf->restoring_div__DOT__when_restoring_div_l76_3 
        = (3U == (IData)(vlSelf->restoring_div__DOT__control_cnt));
    vlSelf->restoring_div__DOT__when_restoring_div_l76_4 
        = (4U == (IData)(vlSelf->restoring_div__DOT__control_cnt));
    vlSelf->restoring_div__DOT__when_restoring_div_l76_5 
        = (5U == (IData)(vlSelf->restoring_div__DOT__control_cnt));
    vlSelf->restoring_div__DOT__when_restoring_div_l76_6 
        = (6U == (IData)(vlSelf->restoring_div__DOT__control_cnt));
}

VL_INLINE_OPT void Vrestoring_div___024root___combo__TOP__0(Vrestoring_div___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root___combo__TOP__0\n"); );
    // Body
    vlSelf->quot = ((IData)((((IData)(vlSelf->dinA) 
                              >> 7U) ^ ((IData)(vlSelf->dinB) 
                                        >> 3U))) ? 
                    (0x100U | (0xffU & ((IData)(1U) 
                                        + (~ (IData)(vlSelf->restoring_div__DOT__quot_reversed)))))
                     : (IData)(vlSelf->restoring_div__DOT__quot_reversed));
}

void Vrestoring_div___024root___eval(Vrestoring_div___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root___eval\n"); );
    // Body
    if ((((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk))) 
         | ((IData)(vlSelf->reset) & (~ (IData)(vlSelf->__Vclklast__TOP__reset))))) {
        Vrestoring_div___024root___sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
        Vrestoring_div___024root___sequent__TOP__1(vlSelf);
    }
    Vrestoring_div___024root___combo__TOP__0(vlSelf);
    // Final
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__reset = vlSelf->reset;
}

#ifdef VL_DEBUG
void Vrestoring_div___024root___eval_debug_assertions(Vrestoring_div___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->din_vld & 0xfeU))) {
        Verilated::overWidthError("din_vld");}
    if (VL_UNLIKELY((vlSelf->dinB & 0xf0U))) {
        Verilated::overWidthError("dinB");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
}
#endif  // VL_DEBUG
