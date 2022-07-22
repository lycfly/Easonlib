// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vbooth4__Syms.h"


void Vbooth4___024root__trace_chg_sub_0(Vbooth4___024root* vlSelf, VerilatedVcd* tracep);

void Vbooth4___024root__trace_chg_top_0(void* voidSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root__trace_chg_top_0\n"); );
    // Init
    Vbooth4___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vbooth4___024root*>(voidSelf);
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vbooth4___024root__trace_chg_sub_0((&vlSymsp->TOP), tracep);
}

void Vbooth4___024root__trace_chg_sub_0(Vbooth4___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root__trace_chg_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = tracep->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        tracep->chgCData(oldp+0,(vlSelf->booth4__DOT__Breg),4);
        tracep->chgSData(oldp+1,(vlSelf->booth4__DOT__shiftReg),13);
        tracep->chgCData(oldp+2,((7U & (IData)(vlSelf->booth4__DOT__shiftReg))),3);
        tracep->chgCData(oldp+3,((0x3fU & (- (IData)(vlSelf->booth4__DOT__PositiveB)))),6);
        tracep->chgCData(oldp+4,((0x3fU & ((- (IData)(vlSelf->booth4__DOT__PositiveB)) 
                                           << 1U))),6);
        tracep->chgCData(oldp+5,(vlSelf->booth4__DOT__PositiveB),6);
        tracep->chgCData(oldp+6,((0x3fU & ((IData)(vlSelf->booth4__DOT__PositiveB) 
                                           << 1U))),6);
        tracep->chgCData(oldp+7,(vlSelf->booth4__DOT__AddB),6);
        tracep->chgCData(oldp+8,((0x3fU & (((IData)(vlSelf->booth4__DOT__shiftReg) 
                                            >> 7U) 
                                           + ((IData)(vlSelf->booth4__DOT__PositiveB) 
                                              << 1U)))),6);
        tracep->chgCData(oldp+9,(vlSelf->booth4__DOT__MinusB),6);
        tracep->chgCData(oldp+10,((0x3fU & (((IData)(vlSelf->booth4__DOT__shiftReg) 
                                             >> 7U) 
                                            + ((- (IData)(vlSelf->booth4__DOT__PositiveB)) 
                                               << 1U)))),6);
        tracep->chgCData(oldp+11,((0x7fU & (IData)(vlSelf->booth4__DOT__shiftReg))),7);
        tracep->chgCData(oldp+12,((0x3fU & ((IData)(vlSelf->booth4__DOT__shiftReg) 
                                            >> 7U))),6);
        tracep->chgCData(oldp+13,((0x3fU & ((4U & (IData)(vlSelf->booth4__DOT__shiftReg))
                                             ? ((2U 
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
                                             : ((2U 
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
                                                  >> 7U)))))),6);
        tracep->chgSData(oldp+14,((0x1fffU & VL_SHIFTRS_III(13,13,32, 
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
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[2U])) {
        tracep->chgCData(oldp+15,(vlSelf->booth4__DOT__cal_cnt),2);
        tracep->chgBit(oldp+16,(vlSelf->booth4__DOT__cal_en));
        tracep->chgBit(oldp+17,((2U == (IData)(vlSelf->booth4__DOT__cal_cnt))));
    }
    tracep->chgBit(oldp+18,(vlSelf->io_din_vld));
    tracep->chgCData(oldp+19,(vlSelf->io_dinA),6);
    tracep->chgCData(oldp+20,(vlSelf->io_dinB),4);
    tracep->chgBit(oldp+21,(vlSelf->io_dout_vld));
    tracep->chgBit(oldp+22,(vlSelf->io_cal_finish));
    tracep->chgSData(oldp+23,(vlSelf->io_dout),10);
    tracep->chgBit(oldp+24,(vlSelf->clk));
    tracep->chgBit(oldp+25,(vlSelf->reset));
    tracep->chgBit(oldp+26,(vlSelf->booth4__DOT__cal_en_regNext));
}

void Vbooth4___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4___024root__trace_cleanup\n"); );
    // Init
    Vbooth4___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vbooth4___024root*>(voidSelf);
    Vbooth4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
}
