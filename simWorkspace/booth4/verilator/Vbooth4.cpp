// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vbooth4.h"
#include "Vbooth4__Syms.h"

//============================================================
// Constructors

Vbooth4::Vbooth4(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new Vbooth4__Syms(_vcontextp__, _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , reset{vlSymsp->TOP.reset}
    , io_din_vld{vlSymsp->TOP.io_din_vld}
    , io_dout_vld{vlSymsp->TOP.io_dout_vld}
    , io_cal_finish{vlSymsp->TOP.io_cal_finish}
    , io_dinA{vlSymsp->TOP.io_dinA}
    , io_dinB{vlSymsp->TOP.io_dinB}
    , io_dout{vlSymsp->TOP.io_dout}
    , rootp{&(vlSymsp->TOP)}
{
}

Vbooth4::Vbooth4(const char* _vcname__)
    : Vbooth4(nullptr, _vcname__)
{
}

//============================================================
// Destructor

Vbooth4::~Vbooth4() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void Vbooth4___024root___eval_initial(Vbooth4___024root* vlSelf);
void Vbooth4___024root___eval_settle(Vbooth4___024root* vlSelf);
void Vbooth4___024root___eval(Vbooth4___024root* vlSelf);
#ifdef VL_DEBUG
void Vbooth4___024root___eval_debug_assertions(Vbooth4___024root* vlSelf);
#endif  // VL_DEBUG
void Vbooth4___024root___final(Vbooth4___024root* vlSelf);

static void _eval_initial_loop(Vbooth4__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    Vbooth4___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        Vbooth4___024root___eval_settle(&(vlSymsp->TOP));
        Vbooth4___024root___eval(&(vlSymsp->TOP));
    } while (0);
}

void Vbooth4::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vbooth4::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vbooth4___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        Vbooth4___024root___eval(&(vlSymsp->TOP));
    } while (0);
    // Evaluate cleanup
}

//============================================================
// Utilities

VerilatedContext* Vbooth4::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* Vbooth4::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

VL_ATTR_COLD void Vbooth4::final() {
    Vbooth4___024root___final(&(vlSymsp->TOP));
}
