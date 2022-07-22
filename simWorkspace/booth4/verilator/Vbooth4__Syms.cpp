// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vbooth4__Syms.h"
#include "Vbooth4.h"
#include "Vbooth4___024root.h"

// FUNCTIONS
Vbooth4__Syms::~Vbooth4__Syms()
{
}

Vbooth4__Syms::Vbooth4__Syms(VerilatedContext* contextp, const char* namep,Vbooth4* modelp)
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
