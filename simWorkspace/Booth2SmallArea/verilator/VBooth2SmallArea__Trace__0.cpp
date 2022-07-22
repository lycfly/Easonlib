// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VBooth2SmallArea__Syms.h"


void VBooth2SmallArea___024root__trace_chg_sub_0(VBooth2SmallArea___024root* vlSelf, VerilatedVcd* tracep);

void VBooth2SmallArea___024root__trace_chg_top_0(void* voidSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root__trace_chg_top_0\n"); );
    // Init
    VBooth2SmallArea___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VBooth2SmallArea___024root*>(voidSelf);
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    VBooth2SmallArea___024root__trace_chg_sub_0((&vlSymsp->TOP), tracep);
}

void VBooth2SmallArea___024root__trace_chg_sub_0(VBooth2SmallArea___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root__trace_chg_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = tracep->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        tracep->chgCData(oldp+0,(vlSelf->Booth2SmallArea__DOT__cal_cnt),3);
        tracep->chgBit(oldp+1,(vlSelf->Booth2SmallArea__DOT__cal_en));
        tracep->chgBit(oldp+2,((7U == (IData)(vlSelf->Booth2SmallArea__DOT__cal_cnt))));
    }
    tracep->chgBit(oldp+3,(vlSelf->io_din_vld));
    tracep->chgCData(oldp+4,(vlSelf->io_dinA),8);
    tracep->chgCData(oldp+5,(vlSelf->io_dinB),8);
    tracep->chgBit(oldp+6,(vlSelf->io_dout_vld));
    tracep->chgSData(oldp+7,(vlSelf->io_dout),16);
    tracep->chgBit(oldp+8,(vlSelf->clk));
    tracep->chgBit(oldp+9,(vlSelf->reset));
    tracep->chgIData(oldp+10,(vlSelf->Booth2SmallArea__DOT__shiftReg),17);
    tracep->chgCData(oldp+11,((3U & vlSelf->Booth2SmallArea__DOT__shiftReg)),2);
    tracep->chgCData(oldp+12,((0xffU & (- (IData)(vlSelf->io_dinB)))),8);
    tracep->chgCData(oldp+13,(vlSelf->Booth2SmallArea__DOT___zz_sumShiftB),8);
    tracep->chgCData(oldp+14,((0xffU & ((IData)((2U 
                                                 == 
                                                 (3U 
                                                  & vlSelf->Booth2SmallArea__DOT__shiftReg)))
                                         ? (- (IData)(vlSelf->io_dinB))
                                         : (IData)(vlSelf->io_dinB)))),8);
    tracep->chgBit(oldp+15,(vlSelf->Booth2SmallArea__DOT__cal_en_regNext));
}

void VBooth2SmallArea___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root__trace_cleanup\n"); );
    // Init
    VBooth2SmallArea___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VBooth2SmallArea___024root*>(voidSelf);
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}
