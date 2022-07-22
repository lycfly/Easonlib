// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_fst_c.h"
#include "Vrestoring_div__Syms.h"


void Vrestoring_div___024root__trace_chg_sub_0(Vrestoring_div___024root* vlSelf, VerilatedFst* tracep);

void Vrestoring_div___024root__trace_chg_top_0(void* voidSelf, VerilatedFst* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root__trace_chg_top_0\n"); );
    // Init
    Vrestoring_div___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vrestoring_div___024root*>(voidSelf);
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vrestoring_div___024root__trace_chg_sub_0((&vlSymsp->TOP), tracep);
}

void Vrestoring_div___024root__trace_chg_sub_0(Vrestoring_div___024root* vlSelf, VerilatedFst* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root__trace_chg_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = tracep->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        tracep->chgCData(oldp+0,(vlSelf->restoring_div__DOT__quotient),8);
        tracep->chgCData(oldp+1,(vlSelf->restoring_div__DOT__divisior),5);
        tracep->chgSData(oldp+2,(vlSelf->restoring_div__DOT__p_remainder),13);
        tracep->chgSData(oldp+3,((0x1fffU & ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                             << 1U))),13);
        tracep->chgCData(oldp+4,((0x1fU & ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                           >> 7U))),5);
        tracep->chgCData(oldp+5,(vlSelf->restoring_div__DOT___zz_p_r_minus_d),5);
        tracep->chgCData(oldp+6,((0x1fU & ((0x10U & (IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d))
                                            ? (0x1fU 
                                               & ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                                  >> 7U))
                                            : (IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d)))),5);
        tracep->chgCData(oldp+7,(vlSelf->restoring_div__DOT__control_cnt),3);
        tracep->chgBit(oldp+8,(vlSelf->restoring_div__DOT__doing));
        tracep->chgBit(oldp+9,((7U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
        tracep->chgBit(oldp+10,((0U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
        tracep->chgBit(oldp+11,((1U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
        tracep->chgBit(oldp+12,((2U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
        tracep->chgBit(oldp+13,((3U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
        tracep->chgBit(oldp+14,((4U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
        tracep->chgBit(oldp+15,((5U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
        tracep->chgBit(oldp+16,((6U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
        tracep->chgCData(oldp+17,(vlSelf->restoring_div__DOT__quot_reversed),8);
        tracep->chgBit(oldp+18,(vlSelf->restoring_div__DOT__finish_pulse_regNext));
    }
    tracep->chgBit(oldp+19,(vlSelf->din_vld));
    tracep->chgCData(oldp+20,(vlSelf->dinA),8);
    tracep->chgCData(oldp+21,(vlSelf->dinB),4);
    tracep->chgBit(oldp+22,(vlSelf->dout_vld));
    tracep->chgSData(oldp+23,(vlSelf->quot),9);
    tracep->chgCData(oldp+24,(vlSelf->remainder),4);
    tracep->chgBit(oldp+25,(vlSelf->clk));
    tracep->chgBit(oldp+26,(vlSelf->reset));
    tracep->chgBit(oldp+27,((IData)((((IData)(vlSelf->dinA) 
                                      >> 7U) ^ ((IData)(vlSelf->dinB) 
                                                >> 3U)))));
    tracep->chgCData(oldp+28,((0xffU & (((0x80U & (IData)(vlSelf->dinA))
                                          ? (~ (IData)(vlSelf->dinA))
                                          : (IData)(vlSelf->dinA)) 
                                        + (1U & ((IData)(vlSelf->dinA) 
                                                 >> 7U))))),8);
    tracep->chgCData(oldp+29,((0xfU & (((8U & (IData)(vlSelf->dinB))
                                         ? (~ (IData)(vlSelf->dinB))
                                         : (IData)(vlSelf->dinB)) 
                                       + (1U & ((IData)(vlSelf->dinB) 
                                                >> 3U))))),4);
}

void Vrestoring_div___024root__trace_cleanup(void* voidSelf, VerilatedFst* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root__trace_cleanup\n"); );
    // Init
    Vrestoring_div___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vrestoring_div___024root*>(voidSelf);
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}
