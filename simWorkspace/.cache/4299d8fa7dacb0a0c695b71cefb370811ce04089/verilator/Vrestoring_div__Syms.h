// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VRESTORING_DIV__SYMS_H_
#define VERILATED_VRESTORING_DIV__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vrestoring_div.h"

// INCLUDE MODULE CLASSES
#include "Vrestoring_div___024root.h"

// SYMS CLASS (contains all model state)
class Vrestoring_div__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vrestoring_div* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vrestoring_div___024root       TOP;

    // CONSTRUCTORS
    Vrestoring_div__Syms(VerilatedContext* contextp, const char* namep, Vrestoring_div* modelp);
    ~Vrestoring_div__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
