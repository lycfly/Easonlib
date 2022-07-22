// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vbooth4__Syms.h"


VL_ATTR_COLD void Vbooth4___024root__trace_init_sub__TOP__0(Vbooth4___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBit(c+19,"io_din_vld", false,-1);
    tracep->declBus(c+20,"io_dinA", false,-1, 5,0);
    tracep->declBus(c+21,"io_dinB", false,-1, 3,0);
    tracep->declBit(c+22,"io_dout_vld", false,-1);
    tracep->declBit(c+23,"io_cal_finish", false,-1);
    tracep->declBus(c+24,"io_dout", false,-1, 9,0);
    tracep->declBit(c+25,"clk", false,-1);
    tracep->declBit(c+26,"reset", false,-1);
    tracep->pushNamePrefix("booth4 ");
    tracep->declBit(c+19,"io_din_vld", false,-1);
    tracep->declBus(c+20,"io_dinA", false,-1, 5,0);
    tracep->declBus(c+21,"io_dinB", false,-1, 3,0);
    tracep->declBit(c+22,"io_dout_vld", false,-1);
    tracep->declBit(c+23,"io_cal_finish", false,-1);
    tracep->declBus(c+24,"io_dout", false,-1, 9,0);
    tracep->declBit(c+25,"clk", false,-1);
    tracep->declBit(c+26,"reset", false,-1);
    tracep->declBus(c+1,"Breg", false,-1, 3,0);
    tracep->declBus(c+2,"shiftReg", false,-1, 12,0);
    tracep->declBus(c+3,"flag_bits", false,-1, 2,0);
    tracep->declBus(c+4,"NegativeB", false,-1, 5,0);
    tracep->declBus(c+5,"Negative2B", false,-1, 5,0);
    tracep->declBus(c+6,"PositiveB", false,-1, 5,0);
    tracep->declBus(c+7,"Positive2B", false,-1, 5,0);
    tracep->declBus(c+8,"AddB", false,-1, 5,0);
    tracep->declBus(c+9,"Add2B", false,-1, 5,0);
    tracep->declBus(c+10,"MinusB", false,-1, 5,0);
    tracep->declBus(c+11,"Minus2B", false,-1, 5,0);
    tracep->declBus(c+16,"cal_cnt", false,-1, 1,0);
    tracep->declBit(c+17,"cal_en", false,-1);
    tracep->declBus(c+12,"shiftReg_low", false,-1, 6,0);
    tracep->declBus(c+13,"shiftReg_high", false,-1, 5,0);
    tracep->declBit(c+18,"cal_cnt_ov_flag", false,-1);
    tracep->declBus(c+14,"beforeshift", false,-1, 5,0);
    tracep->declBus(c+15,"aftershift", false,-1, 12,0);
    tracep->declBit(c+27,"cal_en_regNext", false,-1);
    tracep->popNamePrefix(1);
}

VL_ATTR_COLD void Vbooth4___024root__trace_init_top(Vbooth4___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root__trace_init_top\n"); );
    // Body
    Vbooth4___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vbooth4___024root__trace_full_top_0(void* voidSelf, VerilatedVcd* tracep);
void Vbooth4___024root__trace_chg_top_0(void* voidSelf, VerilatedVcd* tracep);
void Vbooth4___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vbooth4___024root__trace_register(Vbooth4___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root__trace_register\n"); );
    // Body
    tracep->addFullCb(&Vbooth4___024root__trace_full_top_0, vlSelf);
    tracep->addChgCb(&Vbooth4___024root__trace_chg_top_0, vlSelf);
    tracep->addCleanupCb(&Vbooth4___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vbooth4___024root__trace_full_sub_0(Vbooth4___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void Vbooth4___024root__trace_full_top_0(void* voidSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root__trace_full_top_0\n"); );
    // Init
    Vbooth4___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vbooth4___024root*>(voidSelf);
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vbooth4___024root__trace_full_sub_0((&vlSymsp->TOP), tracep);
}

VL_ATTR_COLD void Vbooth4___024root__trace_full_sub_0(Vbooth4___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root__trace_full_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = tracep->oldp(vlSymsp->__Vm_baseCode);
    // Body
    tracep->fullCData(oldp+1,(vlSelf->booth4__DOT__Breg),4);
    tracep->fullSData(oldp+2,(vlSelf->booth4__DOT__shiftReg),13);
    tracep->fullCData(oldp+3,((7U & (IData)(vlSelf->booth4__DOT__shiftReg))),3);
    tracep->fullCData(oldp+4,((0x3fU & (- (IData)(vlSelf->booth4__DOT__PositiveB)))),6);
    tracep->fullCData(oldp+5,((0x3fU & ((- (IData)(vlSelf->booth4__DOT__PositiveB)) 
                                        << 1U))),6);
    tracep->fullCData(oldp+6,(vlSelf->booth4__DOT__PositiveB),6);
    tracep->fullCData(oldp+7,((0x3fU & ((IData)(vlSelf->booth4__DOT__PositiveB) 
                                        << 1U))),6);
    tracep->fullCData(oldp+8,(vlSelf->booth4__DOT__AddB),6);
    tracep->fullCData(oldp+9,((0x3fU & (((IData)(vlSelf->booth4__DOT__shiftReg) 
                                         >> 7U) + ((IData)(vlSelf->booth4__DOT__PositiveB) 
                                                   << 1U)))),6);
    tracep->fullCData(oldp+10,(vlSelf->booth4__DOT__MinusB),6);
    tracep->fullCData(oldp+11,((0x3fU & (((IData)(vlSelf->booth4__DOT__shiftReg) 
                                          >> 7U) + 
                                         ((- (IData)(vlSelf->booth4__DOT__PositiveB)) 
                                          << 1U)))),6);
    tracep->fullCData(oldp+12,((0x7fU & (IData)(vlSelf->booth4__DOT__shiftReg))),7);
    tracep->fullCData(oldp+13,((0x3fU & ((IData)(vlSelf->booth4__DOT__shiftReg) 
                                         >> 7U))),6);
    tracep->fullCData(oldp+14,((0x3fU & ((4U & (IData)(vlSelf->booth4__DOT__shiftReg))
                                          ? ((2U & (IData)(vlSelf->booth4__DOT__shiftReg))
                                              ? ((1U 
                                                  & (IData)(vlSelf->booth4__DOT__shiftReg))
                                                  ? 
                                                 ((IData)(vlSelf->booth4__DOT__shiftReg) 
                                                  >> 7U)
                                                  : (IData)(vlSelf->booth4__DOT__MinusB))
                                              : ((1U 
                                                  & (IData)(vlSelf->booth4__DOT__shiftReg))
                                                  ? (IData)(vlSelf->booth4__DOT__MinusB)
                                                  : 
                                                 (((IData)(vlSelf->booth4__DOT__shiftReg) 
                                                   >> 7U) 
                                                  + 
                                                  ((- (IData)(vlSelf->booth4__DOT__PositiveB)) 
                                                   << 1U))))
                                          : ((2U & (IData)(vlSelf->booth4__DOT__shiftReg))
                                              ? ((1U 
                                                  & (IData)(vlSelf->booth4__DOT__shiftReg))
                                                  ? 
                                                 (((IData)(vlSelf->booth4__DOT__shiftReg) 
                                                   >> 7U) 
                                                  + 
                                                  ((IData)(vlSelf->booth4__DOT__PositiveB) 
                                                   << 1U))
                                                  : (IData)(vlSelf->booth4__DOT__AddB))
                                              : ((1U 
                                                  & (IData)(vlSelf->booth4__DOT__shiftReg))
                                                  ? (IData)(vlSelf->booth4__DOT__AddB)
                                                  : 
                                                 ((IData)(vlSelf->booth4__DOT__shiftReg) 
                                                  >> 7U)))))),6);
    tracep->fullSData(oldp+15,((0x1fffU & VL_SHIFTRS_III(13,13,32, 
                                                         ((0x1f80U 
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
                                                             & (IData)(vlSelf->booth4__DOT__shiftReg))), 2U))),13);
    tracep->fullCData(oldp+16,(vlSelf->booth4__DOT__cal_cnt),2);
    tracep->fullBit(oldp+17,(vlSelf->booth4__DOT__cal_en));
    tracep->fullBit(oldp+18,((2U == (IData)(vlSelf->booth4__DOT__cal_cnt))));
    tracep->fullBit(oldp+19,(vlSelf->io_din_vld));
    tracep->fullCData(oldp+20,(vlSelf->io_dinA),6);
    tracep->fullCData(oldp+21,(vlSelf->io_dinB),4);
    tracep->fullBit(oldp+22,(vlSelf->io_dout_vld));
    tracep->fullBit(oldp+23,(vlSelf->io_cal_finish));
    tracep->fullSData(oldp+24,(vlSelf->io_dout),10);
    tracep->fullBit(oldp+25,(vlSelf->clk));
    tracep->fullBit(oldp+26,(vlSelf->reset));
    tracep->fullBit(oldp+27,(vlSelf->booth4__DOT__cal_en_regNext));
}
