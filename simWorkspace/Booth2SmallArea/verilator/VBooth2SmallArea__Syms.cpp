// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "VBooth2SmallArea__Syms.h"
#include "VBooth2SmallArea.h"
#include "VBooth2SmallArea___024root.h"

// FUNCTIONS
VBooth2SmallArea__Syms::~VBooth2SmallArea__Syms()
{
}

VBooth2SmallArea__Syms::VBooth2SmallArea__Syms(VerilatedContext* contextp, const char* namep,VBooth2SmallArea* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup module instances
    , TOP{this, namep}
{
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-9);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
}
