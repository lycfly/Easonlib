// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vrestoring_div__Syms.h"
#include "Vrestoring_div.h"
#include "Vrestoring_div___024root.h"

// FUNCTIONS
Vrestoring_div__Syms::~Vrestoring_div__Syms()
{
}

Vrestoring_div__Syms::Vrestoring_div__Syms(VerilatedContext* contextp, const char* namep,Vrestoring_div* modelp)
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
