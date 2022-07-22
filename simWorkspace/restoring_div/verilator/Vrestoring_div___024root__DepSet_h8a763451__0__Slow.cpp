// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vrestoring_div.h for the primary calling header

#include "verilated.h"

#include "Vrestoring_div___024root.h"

VL_ATTR_COLD void Vrestoring_div___024root___settle__TOP__0(Vrestoring_div___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root___settle__TOP__0\n"); );
    // Body
    vlSelf->restoring_div__DOT__p_r_shift = (0x1fffU 
                                             & ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                                << 1U));
    vlSelf->remainder = (0xfU & ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                 >> 8U));
    vlSelf->dout_vld = vlSelf->restoring_div__DOT__finish_pulse_regNext;
    vlSelf->restoring_div__DOT___zz_p_r_minus_d = (0x1fU 
                                                   & ((0x1fU 
                                                       & ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                                          >> 7U)) 
                                                      - (IData)(vlSelf->restoring_div__DOT__divisior)));
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
    vlSelf->restoring_div__DOT__p_r_part_next = (0x1fU 
                                                 & ((0x10U 
                                                     & (IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d))
                                                     ? 
                                                    (0x1fU 
                                                     & ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                                        >> 7U))
                                                     : (IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d)));
    vlSelf->quot = ((IData)((((IData)(vlSelf->dinA) 
                              >> 7U) ^ ((IData)(vlSelf->dinB) 
                                        >> 3U))) ? 
                    (0x100U | (0xffU & ((IData)(1U) 
                                        + (~ (IData)(vlSelf->restoring_div__DOT__quot_reversed)))))
                     : (IData)(vlSelf->restoring_div__DOT__quot_reversed));
}

VL_ATTR_COLD void Vrestoring_div___024root___eval_initial(Vrestoring_div___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = (1U & (~ (IData)(vlSelf->clk)));
    vlSelf->__Vclklast__TOP__reset = (1U & (~ (IData)(vlSelf->reset)));
}

VL_ATTR_COLD void Vrestoring_div___024root___eval_settle(Vrestoring_div___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root___eval_settle\n"); );
    // Body
    Vrestoring_div___024root___settle__TOP__0(vlSelf);
    vlSelf->__Vm_traceActivity[1U] = 1U;
    vlSelf->__Vm_traceActivity[0U] = 1U;
}

VL_ATTR_COLD void Vrestoring_div___024root___final(Vrestoring_div___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root___final\n"); );
}

VL_ATTR_COLD void Vrestoring_div___024root___ctor_var_reset(Vrestoring_div___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->din_vld = VL_RAND_RESET_I(1);
    vlSelf->dinA = VL_RAND_RESET_I(8);
    vlSelf->dinB = VL_RAND_RESET_I(4);
    vlSelf->dout_vld = VL_RAND_RESET_I(1);
    vlSelf->quot = VL_RAND_RESET_I(9);
    vlSelf->remainder = VL_RAND_RESET_I(4);
    vlSelf->clk = 0;
    vlSelf->reset = 0;
    vlSelf->restoring_div__DOT___zz_p_r_minus_d = VL_RAND_RESET_I(5);
    vlSelf->restoring_div__DOT__quotient = VL_RAND_RESET_I(8);
    vlSelf->restoring_div__DOT__divisior = VL_RAND_RESET_I(5);
    vlSelf->restoring_div__DOT__p_remainder = VL_RAND_RESET_I(13);
    vlSelf->restoring_div__DOT__p_r_shift = VL_RAND_RESET_I(13);
    vlSelf->restoring_div__DOT__p_r_part_next = VL_RAND_RESET_I(5);
    vlSelf->restoring_div__DOT__control_cnt = VL_RAND_RESET_I(3);
    vlSelf->restoring_div__DOT__doing = VL_RAND_RESET_I(1);
    vlSelf->restoring_div__DOT__finish_pulse = VL_RAND_RESET_I(1);
    vlSelf->restoring_div__DOT__when_restoring_div_l76 = VL_RAND_RESET_I(1);
    vlSelf->restoring_div__DOT__when_restoring_div_l76_1 = VL_RAND_RESET_I(1);
    vlSelf->restoring_div__DOT__when_restoring_div_l76_2 = VL_RAND_RESET_I(1);
    vlSelf->restoring_div__DOT__when_restoring_div_l76_3 = VL_RAND_RESET_I(1);
    vlSelf->restoring_div__DOT__when_restoring_div_l76_4 = VL_RAND_RESET_I(1);
    vlSelf->restoring_div__DOT__when_restoring_div_l76_5 = VL_RAND_RESET_I(1);
    vlSelf->restoring_div__DOT__when_restoring_div_l76_6 = VL_RAND_RESET_I(1);
    vlSelf->restoring_div__DOT__quot_reversed = VL_RAND_RESET_I(8);
    vlSelf->restoring_div__DOT__finish_pulse_regNext = VL_RAND_RESET_I(1);
    vlSelf->__Vdly__restoring_div__DOT__control_cnt = VL_RAND_RESET_I(3);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = VL_RAND_RESET_I(1);
    }
}
