// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VBooth2SmallArea__Syms.h"


VL_ATTR_COLD void VBooth2SmallArea___024root__trace_init_sub__TOP__0(VBooth2SmallArea___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBit(c+4,"io_din_vld", false,-1);
    tracep->declBus(c+5,"io_dinA", false,-1, 7,0);
    tracep->declBus(c+6,"io_dinB", false,-1, 7,0);
    tracep->declBit(c+7,"io_dout_vld", false,-1);
    tracep->declBus(c+8,"io_dout", false,-1, 15,0);
    tracep->declBit(c+9,"clk", false,-1);
    tracep->declBit(c+10,"reset", false,-1);
    tracep->pushNamePrefix("Booth2SmallArea ");
    tracep->declBit(c+4,"io_din_vld", false,-1);
    tracep->declBus(c+5,"io_dinA", false,-1, 7,0);
    tracep->declBus(c+6,"io_dinB", false,-1, 7,0);
    tracep->declBit(c+7,"io_dout_vld", false,-1);
    tracep->declBus(c+8,"io_dout", false,-1, 15,0);
    tracep->declBit(c+9,"clk", false,-1);
    tracep->declBit(c+10,"reset", false,-1);
    tracep->declBus(c+11,"shiftReg", false,-1, 16,0);
    tracep->declBus(c+12,"flag_bits", false,-1, 1,0);
    tracep->declBus(c+13,"NegativeB", false,-1, 7,0);
    tracep->declBus(c+14,"sumShiftB", false,-1, 7,0);
    tracep->declBus(c+15,"addMux", false,-1, 7,0);
    tracep->declBus(c+1,"cal_cnt", false,-1, 2,0);
    tracep->declBit(c+2,"cal_en", false,-1);
    tracep->declBit(c+3,"when_Booth2SmallArea_l32", false,-1);
    tracep->declBit(c+16,"cal_en_regNext", false,-1);
    tracep->popNamePrefix(1);
}

VL_ATTR_COLD void VBooth2SmallArea___024root__trace_init_top(VBooth2SmallArea___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root__trace_init_top\n"); );
    // Body
    VBooth2SmallArea___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void VBooth2SmallArea___024root__trace_full_top_0(void* voidSelf, VerilatedVcd* tracep);
void VBooth2SmallArea___024root__trace_chg_top_0(void* voidSelf, VerilatedVcd* tracep);
void VBooth2SmallArea___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void VBooth2SmallArea___024root__trace_register(VBooth2SmallArea___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root__trace_register\n"); );
    // Body
    tracep->addFullCb(&VBooth2SmallArea___024root__trace_full_top_0, vlSelf);
    tracep->addChgCb(&VBooth2SmallArea___024root__trace_chg_top_0, vlSelf);
    tracep->addCleanupCb(&VBooth2SmallArea___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void VBooth2SmallArea___024root__trace_full_sub_0(VBooth2SmallArea___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void VBooth2SmallArea___024root__trace_full_top_0(void* voidSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root__trace_full_top_0\n"); );
    // Init
    VBooth2SmallArea___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VBooth2SmallArea___024root*>(voidSelf);
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    VBooth2SmallArea___024root__trace_full_sub_0((&vlSymsp->TOP), tracep);
}

VL_ATTR_COLD void VBooth2SmallArea___024root__trace_full_sub_0(VBooth2SmallArea___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBooth2SmallArea___024root__trace_full_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = tracep->oldp(vlSymsp->__Vm_baseCode);
    // Body
    tracep->fullCData(oldp+1,(vlSelf->Booth2SmallArea__DOT__cal_cnt),3);
    tracep->fullBit(oldp+2,(vlSelf->Booth2SmallArea__DOT__cal_en));
    tracep->fullBit(oldp+3,((7U == (IData)(vlSelf->Booth2SmallArea__DOT__cal_cnt))));
    tracep->fullBit(oldp+4,(vlSelf->io_din_vld));
    tracep->fullCData(oldp+5,(vlSelf->io_dinA),8);
    tracep->fullCData(oldp+6,(vlSelf->io_dinB),8);
    tracep->fullBit(oldp+7,(vlSelf->io_dout_vld));
    tracep->fullSData(oldp+8,(vlSelf->io_dout),16);
    tracep->fullBit(oldp+9,(vlSelf->clk));
    tracep->fullBit(oldp+10,(vlSelf->reset));
    tracep->fullIData(oldp+11,(vlSelf->Booth2SmallArea__DOT__shiftReg),17);
    tracep->fullCData(oldp+12,((3U & vlSelf->Booth2SmallArea__DOT__shiftReg)),2);
    tracep->fullCData(oldp+13,((0xffU & (- (IData)(vlSelf->io_dinB)))),8);
    tracep->fullCData(oldp+14,(vlSelf->Booth2SmallArea__DOT___zz_sumShiftB),8);
    tracep->fullCData(oldp+15,((0xffU & ((IData)((2U 
                                                  == 
                                                  (3U 
                                                   & vlSelf->Booth2SmallArea__DOT__shiftReg)))
                                          ? (- (IData)(vlSelf->io_dinB))
                                          : (IData)(vlSelf->io_dinB)))),8);
    tracep->fullBit(oldp+16,(vlSelf->Booth2SmallArea__DOT__cal_en_regNext));
}
