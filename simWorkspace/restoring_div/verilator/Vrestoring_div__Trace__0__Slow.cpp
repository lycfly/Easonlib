// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_fst_c.h"
#include "Vrestoring_div__Syms.h"


VL_ATTR_COLD void Vrestoring_div___024root__trace_init_sub__TOP__0(Vrestoring_div___024root* vlSelf, VerilatedFst* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBit(c+20,"din_vld",-1,FST_VD_INPUT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBus(c+21,"dinA",-1,FST_VD_INPUT,FST_VT_VCD_WIRE, false,-1, 7,0);
    tracep->declBus(c+22,"dinB",-1,FST_VD_INPUT,FST_VT_VCD_WIRE, false,-1, 3,0);
    tracep->declBit(c+23,"dout_vld",-1,FST_VD_OUTPUT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBus(c+24,"quot",-1,FST_VD_OUTPUT,FST_VT_VCD_WIRE, false,-1, 8,0);
    tracep->declBus(c+25,"remainder",-1,FST_VD_OUTPUT,FST_VT_VCD_WIRE, false,-1, 3,0);
    tracep->declBit(c+26,"clk",-1,FST_VD_INPUT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBit(c+27,"reset",-1,FST_VD_INPUT,FST_VT_VCD_WIRE, false,-1);
    tracep->pushNamePrefix("restoring_div ");
    tracep->declBit(c+20,"din_vld",-1,FST_VD_INPUT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBus(c+21,"dinA",-1,FST_VD_INPUT,FST_VT_VCD_WIRE, false,-1, 7,0);
    tracep->declBus(c+22,"dinB",-1,FST_VD_INPUT,FST_VT_VCD_WIRE, false,-1, 3,0);
    tracep->declBit(c+23,"dout_vld",-1,FST_VD_OUTPUT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBus(c+24,"quot",-1,FST_VD_OUTPUT,FST_VT_VCD_WIRE, false,-1, 8,0);
    tracep->declBus(c+25,"remainder",-1,FST_VD_OUTPUT,FST_VT_VCD_WIRE, false,-1, 3,0);
    tracep->declBit(c+26,"clk",-1,FST_VD_INPUT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBit(c+27,"reset",-1,FST_VD_INPUT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBit(c+28,"sign_out",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBus(c+29,"dinA_abs",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1, 7,0);
    tracep->declBus(c+30,"dinB_abs",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1, 3,0);
    tracep->declBus(c+1,"quotient",-1, FST_VD_IMPLICIT,FST_VT_SV_LOGIC, false,-1, 7,0);
    tracep->declBus(c+2,"divisior",-1, FST_VD_IMPLICIT,FST_VT_SV_LOGIC, false,-1, 4,0);
    tracep->declBus(c+3,"p_remainder",-1, FST_VD_IMPLICIT,FST_VT_SV_LOGIC, false,-1, 12,0);
    tracep->declBus(c+4,"p_r_shift",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1, 12,0);
    tracep->declBus(c+5,"p_r_calpart",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1, 4,0);
    tracep->declBus(c+6,"p_r_minus_d",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1, 4,0);
    tracep->declBus(c+7,"p_r_part_next",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1, 4,0);
    tracep->declBus(c+8,"control_cnt",-1, FST_VD_IMPLICIT,FST_VT_SV_LOGIC, false,-1, 2,0);
    tracep->declBit(c+9,"doing",-1, FST_VD_IMPLICIT,FST_VT_SV_LOGIC, false,-1);
    tracep->declBit(c+10,"finish_pulse",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBit(c+11,"when_restoring_div_l76",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBit(c+12,"when_restoring_div_l76_1",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBit(c+13,"when_restoring_div_l76_2",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBit(c+14,"when_restoring_div_l76_3",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBit(c+15,"when_restoring_div_l76_4",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBit(c+16,"when_restoring_div_l76_5",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBit(c+17,"when_restoring_div_l76_6",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBit(c+10,"when_restoring_div_l76_7",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1);
    tracep->declBus(c+18,"quot_reversed",-1, FST_VD_IMPLICIT,FST_VT_VCD_WIRE, false,-1, 7,0);
    tracep->declBit(c+19,"finish_pulse_regNext",-1, FST_VD_IMPLICIT,FST_VT_SV_LOGIC, false,-1);
    tracep->popNamePrefix(1);
}

VL_ATTR_COLD void Vrestoring_div___024root__trace_init_top(Vrestoring_div___024root* vlSelf, VerilatedFst* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root__trace_init_top\n"); );
    // Body
    Vrestoring_div___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vrestoring_div___024root__trace_full_top_0(void* voidSelf, VerilatedFst* tracep);
void Vrestoring_div___024root__trace_chg_top_0(void* voidSelf, VerilatedFst* tracep);
void Vrestoring_div___024root__trace_cleanup(void* voidSelf, VerilatedFst* /*unused*/);

VL_ATTR_COLD void Vrestoring_div___024root__trace_register(Vrestoring_div___024root* vlSelf, VerilatedFst* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root__trace_register\n"); );
    // Body
    tracep->addFullCb(&Vrestoring_div___024root__trace_full_top_0, vlSelf);
    tracep->addChgCb(&Vrestoring_div___024root__trace_chg_top_0, vlSelf);
    tracep->addCleanupCb(&Vrestoring_div___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vrestoring_div___024root__trace_full_sub_0(Vrestoring_div___024root* vlSelf, VerilatedFst* tracep);

VL_ATTR_COLD void Vrestoring_div___024root__trace_full_top_0(void* voidSelf, VerilatedFst* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root__trace_full_top_0\n"); );
    // Init
    Vrestoring_div___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vrestoring_div___024root*>(voidSelf);
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vrestoring_div___024root__trace_full_sub_0((&vlSymsp->TOP), tracep);
}

VL_ATTR_COLD void Vrestoring_div___024root__trace_full_sub_0(Vrestoring_div___024root* vlSelf, VerilatedFst* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vrestoring_div___024root__trace_full_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = tracep->oldp(vlSymsp->__Vm_baseCode);
    // Body
    tracep->fullCData(oldp+1,(vlSelf->restoring_div__DOT__quotient),8);
    tracep->fullCData(oldp+2,(vlSelf->restoring_div__DOT__divisior),5);
    tracep->fullSData(oldp+3,(vlSelf->restoring_div__DOT__p_remainder),13);
    tracep->fullSData(oldp+4,((0x1fffU & ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                          << 1U))),13);
    tracep->fullCData(oldp+5,((0x1fU & ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                        >> 7U))),5);
    tracep->fullCData(oldp+6,(vlSelf->restoring_div__DOT___zz_p_r_minus_d),5);
    tracep->fullCData(oldp+7,((0x1fU & ((0x10U & (IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d))
                                         ? (0x1fU & 
                                            ((IData)(vlSelf->restoring_div__DOT__p_remainder) 
                                             >> 7U))
                                         : (IData)(vlSelf->restoring_div__DOT___zz_p_r_minus_d)))),5);
    tracep->fullCData(oldp+8,(vlSelf->restoring_div__DOT__control_cnt),3);
    tracep->fullBit(oldp+9,(vlSelf->restoring_div__DOT__doing));
    tracep->fullBit(oldp+10,((7U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
    tracep->fullBit(oldp+11,((0U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
    tracep->fullBit(oldp+12,((1U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
    tracep->fullBit(oldp+13,((2U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
    tracep->fullBit(oldp+14,((3U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
    tracep->fullBit(oldp+15,((4U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
    tracep->fullBit(oldp+16,((5U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
    tracep->fullBit(oldp+17,((6U == (IData)(vlSelf->restoring_div__DOT__control_cnt))));
    tracep->fullCData(oldp+18,(vlSelf->restoring_div__DOT__quot_reversed),8);
    tracep->fullBit(oldp+19,(vlSelf->restoring_div__DOT__finish_pulse_regNext));
    tracep->fullBit(oldp+20,(vlSelf->din_vld));
    tracep->fullCData(oldp+21,(vlSelf->dinA),8);
    tracep->fullCData(oldp+22,(vlSelf->dinB),4);
    tracep->fullBit(oldp+23,(vlSelf->dout_vld));
    tracep->fullSData(oldp+24,(vlSelf->quot),9);
    tracep->fullCData(oldp+25,(vlSelf->remainder),4);
    tracep->fullBit(oldp+26,(vlSelf->clk));
    tracep->fullBit(oldp+27,(vlSelf->reset));
    tracep->fullBit(oldp+28,((IData)((((IData)(vlSelf->dinA) 
                                       >> 7U) ^ ((IData)(vlSelf->dinB) 
                                                 >> 3U)))));
    tracep->fullCData(oldp+29,((0xffU & (((0x80U & (IData)(vlSelf->dinA))
                                           ? (~ (IData)(vlSelf->dinA))
                                           : (IData)(vlSelf->dinA)) 
                                         + (1U & ((IData)(vlSelf->dinA) 
                                                  >> 7U))))),8);
    tracep->fullCData(oldp+30,((0xfU & (((8U & (IData)(vlSelf->dinB))
                                          ? (~ (IData)(vlSelf->dinB))
                                          : (IData)(vlSelf->dinB)) 
                                        + (1U & ((IData)(vlSelf->dinB) 
                                                 >> 3U))))),4);
}
