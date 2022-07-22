// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vbooth4.h for the primary calling header

#include "verilated.h"

#include "Vbooth4___024root.h"

VL_ATTR_COLD void Vbooth4___024root___settle__TOP__0(Vbooth4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root___settle__TOP__0\n"); );
    // Body
    vlSelf->io_dout = (0x3ffU & ((IData)(vlSelf->booth4__DOT__shiftReg) 
                                 >> 1U));
    vlSelf->booth4__DOT__PositiveB = ((0x30U & ((- (IData)(
                                                           (1U 
                                                            & ((IData)(vlSelf->booth4__DOT__Breg) 
                                                               >> 3U)))) 
                                                << 4U)) 
                                      | (IData)(vlSelf->booth4__DOT__Breg));
    vlSelf->io_cal_finish = ((2U == (IData)(vlSelf->booth4__DOT__cal_cnt)) 
                             & (IData)(vlSelf->booth4__DOT__cal_en));
    vlSelf->io_dout_vld = ((~ (IData)(vlSelf->booth4__DOT__cal_en)) 
                           & (IData)(vlSelf->booth4__DOT__cal_en_regNext));
    vlSelf->booth4__DOT__AddB = (0x3fU & (((IData)(vlSelf->booth4__DOT__shiftReg) 
                                           >> 7U) + (IData)(vlSelf->booth4__DOT__PositiveB)));
    vlSelf->booth4__DOT__MinusB = (0x3fU & (((IData)(vlSelf->booth4__DOT__shiftReg) 
                                             >> 7U) 
                                            + (- (IData)(vlSelf->booth4__DOT__PositiveB))));
    vlSelf->booth4__DOT___zz_aftershift_1 = ((0x1f80U 
                                              & (((4U 
                                                   & (IData)(vlSelf->booth4__DOT__shiftReg))
                                                   ? 
                                                  ((2U 
                                                    & (IData)(vlSelf->booth4__DOT__shiftReg))
                                                    ? 
                                                   ((1U 
                                                     & (IData)(vlSelf->booth4__DOT__shiftReg))
                                                     ? 
                                                    ((IData)(vlSelf->booth4__DOT__shiftReg) 
                                                     >> 7U)
                                                     : (IData)(vlSelf->booth4__DOT__MinusB))
                                                    : 
                                                   ((1U 
                                                     & (IData)(vlSelf->booth4__DOT__shiftReg))
                                                     ? (IData)(vlSelf->booth4__DOT__MinusB)
                                                     : 
                                                    (((IData)(vlSelf->booth4__DOT__shiftReg) 
                                                      >> 7U) 
                                                     + 
                                                     ((- (IData)(vlSelf->booth4__DOT__PositiveB)) 
                                                      << 1U))))
                                                   : 
                                                  ((2U 
                                                    & (IData)(vlSelf->booth4__DOT__shiftReg))
                                                    ? 
                                                   ((1U 
                                                     & (IData)(vlSelf->booth4__DOT__shiftReg))
                                                     ? 
                                                    (((IData)(vlSelf->booth4__DOT__shiftReg) 
                                                      >> 7U) 
                                                     + 
                                                     ((IData)(vlSelf->booth4__DOT__PositiveB) 
                                                      << 1U))
                                                     : (IData)(vlSelf->booth4__DOT__AddB))
                                                    : 
                                                   ((1U 
                                                     & (IData)(vlSelf->booth4__DOT__shiftReg))
                                                     ? (IData)(vlSelf->booth4__DOT__AddB)
                                                     : 
                                                    ((IData)(vlSelf->booth4__DOT__shiftReg) 
                                                     >> 7U)))) 
                                                 << 7U)) 
                                             | (0x7fU 
                                                & (IData)(vlSelf->booth4__DOT__shiftReg)));
}

VL_ATTR_COLD void Vbooth4___024root___eval_initial(Vbooth4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = (1U & (~ (IData)(vlSelf->clk)));
    vlSelf->__Vclklast__TOP__reset = (1U & (~ (IData)(vlSelf->reset)));
}

VL_ATTR_COLD void Vbooth4___024root___eval_settle(Vbooth4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root___eval_settle\n"); );
    // Body
    Vbooth4___024root___settle__TOP__0(vlSelf);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->__Vm_traceActivity[1U] = 1U;
    vlSelf->__Vm_traceActivity[0U] = 1U;
}

VL_ATTR_COLD void Vbooth4___024root___final(Vbooth4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root___final\n"); );
}

VL_ATTR_COLD void Vbooth4___024root___ctor_var_reset(Vbooth4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->io_din_vld = VL_RAND_RESET_I(1);
    vlSelf->io_dinA = VL_RAND_RESET_I(6);
    vlSelf->io_dinB = VL_RAND_RESET_I(4);
    vlSelf->io_dout_vld = VL_RAND_RESET_I(1);
    vlSelf->io_cal_finish = VL_RAND_RESET_I(1);
    vlSelf->io_dout = VL_RAND_RESET_I(10);
    vlSelf->clk = 0;
    vlSelf->reset = 0;
    vlSelf->booth4__DOT___zz_aftershift_1 = VL_RAND_RESET_I(13);
    vlSelf->booth4__DOT__Breg = VL_RAND_RESET_I(4);
    vlSelf->booth4__DOT__shiftReg = VL_RAND_RESET_I(13);
    vlSelf->booth4__DOT__PositiveB = VL_RAND_RESET_I(6);
    vlSelf->booth4__DOT__AddB = VL_RAND_RESET_I(6);
    vlSelf->booth4__DOT__MinusB = VL_RAND_RESET_I(6);
    vlSelf->booth4__DOT__cal_cnt = VL_RAND_RESET_I(2);
    vlSelf->booth4__DOT__cal_en = VL_RAND_RESET_I(1);
    vlSelf->booth4__DOT__cal_en_regNext = VL_RAND_RESET_I(1);
    vlSelf->__Vdly__booth4__DOT__cal_cnt = VL_RAND_RESET_I(2);
    for (int __Vi0=0; __Vi0<3; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = VL_RAND_RESET_I(1);
    }
}
