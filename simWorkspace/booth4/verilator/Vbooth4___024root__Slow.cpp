// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vbooth4.h for the primary calling header

#include "verilated.h"

#include "Vbooth4__Syms.h"
#include "Vbooth4___024root.h"

void Vbooth4___024root___ctor_var_reset(Vbooth4___024root* vlSelf);

Vbooth4___024root::Vbooth4___024root(Vbooth4__Syms* symsp, const char* name)
    : VerilatedModule{name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vbooth4___024root___ctor_var_reset(this);
}

void Vbooth4___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

Vbooth4___024root::~Vbooth4___024root() {
}
