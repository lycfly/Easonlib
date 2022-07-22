// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vrestoring_div.h"
#include "Vrestoring_div__Syms.h"
#include "verilated_fst_c.h"

//============================================================
// Constructors

Vrestoring_div::Vrestoring_div(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new Vrestoring_div__Syms(_vcontextp__, _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , reset{vlSymsp->TOP.reset}
    , din_vld{vlSymsp->TOP.din_vld}
    , dinA{vlSymsp->TOP.dinA}
    , dinB{vlSymsp->TOP.dinB}
    , dout_vld{vlSymsp->TOP.dout_vld}
    , remainder{vlSymsp->TOP.remainder}
    , quot{vlSymsp->TOP.quot}
    , rootp{&(vlSymsp->TOP)}
{
}

Vrestoring_div::Vrestoring_div(const char* _vcname__)
    : Vrestoring_div(nullptr, _vcname__)
{
}

//============================================================
// Destructor

Vrestoring_div::~Vrestoring_div() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void Vrestoring_div___024root___eval_initial(Vrestoring_div___024root* vlSelf);
void Vrestoring_div___024root___eval_settle(Vrestoring_div___024root* vlSelf);
void Vrestoring_div___024root___eval(Vrestoring_div___024root* vlSelf);
#ifdef VL_DEBUG
void Vrestoring_div___024root___eval_debug_assertions(Vrestoring_div___024root* vlSelf);
#endif  // VL_DEBUG
void Vrestoring_div___024root___final(Vrestoring_div___024root* vlSelf);

static void _eval_initial_loop(Vrestoring_div__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    Vrestoring_div___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    vlSymsp->__Vm_activity = true;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        Vrestoring_div___024root___eval_settle(&(vlSymsp->TOP));
        Vrestoring_div___024root___eval(&(vlSymsp->TOP));
    } while (0);
}

void Vrestoring_div::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vrestoring_div::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vrestoring_div___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    vlSymsp->__Vm_activity = true;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        Vrestoring_div___024root___eval(&(vlSymsp->TOP));
    } while (0);
    // Evaluate cleanup
}

//============================================================
// Utilities

VerilatedContext* Vrestoring_div::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* Vrestoring_div::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

VL_ATTR_COLD void Vrestoring_div::final() {
    Vrestoring_div___024root___final(&(vlSymsp->TOP));
}

//============================================================
// Trace configuration

void Vrestoring_div___024root__trace_init_top(Vrestoring_div___024root* vlSelf, VerilatedFst* tracep);

VL_ATTR_COLD static void trace_init(void* voidSelf, VerilatedFst* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vrestoring_div___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vrestoring_div___024root*>(voidSelf);
    Vrestoring_div__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (!vlSymsp->_vm_contextp__->calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
            "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->scopeEscape(' ');
    tracep->pushNamePrefix(std::string{vlSymsp->name()} + ' ');
    Vrestoring_div___024root__trace_init_top(vlSelf, tracep);
    tracep->popNamePrefix();
    tracep->scopeEscape('.');
}

VL_ATTR_COLD void Vrestoring_div___024root__trace_register(Vrestoring_div___024root* vlSelf, VerilatedFst* tracep);

VL_ATTR_COLD void Vrestoring_div::trace(VerilatedFstC* tfp, int levels, int options) {
    if (false && levels && options) {}  // Prevent unused
    tfp->spTrace()->addInitCb(&trace_init, &(vlSymsp->TOP));
    Vrestoring_div___024root__trace_register(&(vlSymsp->TOP), tfp->spTrace());
}
