// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VBOOTH4__SYMS_H_
#define VERILATED_VBOOTH4__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vbooth4.h"

// INCLUDE MODULE CLASSES
#include "Vbooth4___024root.h"

// SYMS CLASS (contains all model state)
class Vbooth4__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vbooth4* const __Vm_modelp;
    bool __Vm_activity = false;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode = 0;  ///< Used by trace routines when tracing multiple models
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vbooth4___024root              TOP;

    // CONSTRUCTORS
    Vbooth4__Syms(VerilatedContext* contextp, const char* namep, Vbooth4* modelp);
    ~Vbooth4__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
