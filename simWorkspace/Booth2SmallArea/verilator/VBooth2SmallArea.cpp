// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VBooth2SmallArea.h"
#include "VBooth2SmallArea__Syms.h"
#include "verilated_vcd_c.h"

//============================================================
// Constructors

VBooth2SmallArea::VBooth2SmallArea(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new VBooth2SmallArea__Syms(_vcontextp__, _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , reset{vlSymsp->TOP.reset}
    , io_din_vld{vlSymsp->TOP.io_din_vld}
    , io_dinA{vlSymsp->TOP.io_dinA}
    , io_dinB{vlSymsp->TOP.io_dinB}
    , io_dout_vld{vlSymsp->TOP.io_dout_vld}
    , io_dout{vlSymsp->TOP.io_dout}
    , rootp{&(vlSymsp->TOP)}
{
}

VBooth2SmallArea::VBooth2SmallArea(const char* _vcname__)
    : VBooth2SmallArea(nullptr, _vcname__)
{
}

//============================================================
// Destructor

VBooth2SmallArea::~VBooth2SmallArea() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void VBooth2SmallArea___024root___eval_initial(VBooth2SmallArea___024root* vlSelf);
void VBooth2SmallArea___024root___eval_settle(VBooth2SmallArea___024root* vlSelf);
void VBooth2SmallArea___024root___eval(VBooth2SmallArea___024root* vlSelf);
#ifdef VL_DEBUG
void VBooth2SmallArea___024root___eval_debug_assertions(VBooth2SmallArea___024root* vlSelf);
#endif  // VL_DEBUG
void VBooth2SmallArea___024root___final(VBooth2SmallArea___024root* vlSelf);

static void _eval_initial_loop(VBooth2SmallArea__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    VBooth2SmallArea___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    vlSymsp->__Vm_activity = true;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        VBooth2SmallArea___024root___eval_settle(&(vlSymsp->TOP));
        VBooth2SmallArea___024root___eval(&(vlSymsp->TOP));
    } while (0);
}

void VBooth2SmallArea::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VBooth2SmallArea::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VBooth2SmallArea___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    vlSymsp->__Vm_activity = true;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        VBooth2SmallArea___024root___eval(&(vlSymsp->TOP));
    } while (0);
    // Evaluate cleanup
}

//============================================================
// Utilities

VerilatedContext* VBooth2SmallArea::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* VBooth2SmallArea::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

VL_ATTR_COLD void VBooth2SmallArea::final() {
    VBooth2SmallArea___024root___final(&(vlSymsp->TOP));
}

//============================================================
// Trace configuration

void VBooth2SmallArea___024root__trace_init_top(VBooth2SmallArea___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD static void trace_init(void* voidSelf, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    VBooth2SmallArea___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VBooth2SmallArea___024root*>(voidSelf);
    VBooth2SmallArea__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (!vlSymsp->_vm_contextp__->calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
            "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->scopeEscape(' ');
    tracep->pushNamePrefix(std::string{vlSymsp->name()} + ' ');
    VBooth2SmallArea___024root__trace_init_top(vlSelf, tracep);
    tracep->popNamePrefix();
    tracep->scopeEscape('.');
}

VL_ATTR_COLD void VBooth2SmallArea___024root__trace_register(VBooth2SmallArea___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void VBooth2SmallArea::trace(VerilatedVcdC* tfp, int levels, int options) {
    if (false && levels && options) {}  // Prevent unused
    tfp->spTrace()->addInitCb(&trace_init, &(vlSymsp->TOP));
    VBooth2SmallArea___024root__trace_register(&(vlSymsp->TOP), tfp->spTrace());
}
