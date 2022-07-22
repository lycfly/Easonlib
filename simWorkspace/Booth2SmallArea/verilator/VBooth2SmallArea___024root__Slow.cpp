// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VBooth2SmallArea.h for the primary calling header

#include "verilated.h"

#include "VBooth2SmallArea__Syms.h"
#include "VBooth2SmallArea___024root.h"

void VBooth2SmallArea___024root___ctor_var_reset(VBooth2SmallArea___024root* vlSelf);

VBooth2SmallArea___024root::VBooth2SmallArea___024root(VBooth2SmallArea__Syms* symsp, const char* name)
    : VerilatedModule{name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    VBooth2SmallArea___024root___ctor_var_reset(this);
}

void VBooth2SmallArea___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

VBooth2SmallArea___024root::~VBooth2SmallArea___024root() {
}
