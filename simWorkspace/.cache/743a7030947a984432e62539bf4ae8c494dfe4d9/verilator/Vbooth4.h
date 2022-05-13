// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VBOOTH4_H_
#define _VBOOTH4_H_  // guard

#include "verilated.h"

//==========

class Vbooth4__Syms;
class Vbooth4_VerilatedVcd;


//----------

VL_MODULE(Vbooth4) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clk,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_din_vld,0,0);
    VL_IN8(io_dinA,3,0);
    VL_IN8(io_dinB,3,0);
    VL_OUT8(io_dout_vld,0,0);
    VL_OUT8(io_dout,7,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    CData/*3:0*/ booth4__DOT__Breg;
    CData/*5:0*/ booth4__DOT__PositiveB;
    CData/*5:0*/ booth4__DOT__AddB;
    CData/*5:0*/ booth4__DOT__MinusB;
    CData/*0:0*/ booth4__DOT__cal_cnt;
    CData/*0:0*/ booth4__DOT__cal_en;
    CData/*0:0*/ booth4__DOT__cal_en_regNext;
    SData/*10:0*/ booth4__DOT___zz_aftershift_1;
    SData/*10:0*/ booth4__DOT__shiftReg;
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vdly__booth4__DOT__cal_cnt;
    CData/*0:0*/ __Vclklast__TOP__clk;
    CData/*0:0*/ __Vclklast__TOP__reset;
    CData/*0:0*/ __Vm_traceActivity[3];
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vbooth4__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vbooth4);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vbooth4(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vbooth4();
    /// Trace signals in the model; called by application code
    void trace(VerilatedVcdC* tfp, int levels, int options = 0);
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
    static void _eval_initial_loop(Vbooth4__Syms* __restrict vlSymsp);
    void __Vconfigure(Vbooth4__Syms* symsp, bool first);
  private:
    static QData _change_request(Vbooth4__Syms* __restrict vlSymsp);
    static QData _change_request_1(Vbooth4__Syms* __restrict vlSymsp);
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vbooth4__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vbooth4__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vbooth4__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__1(Vbooth4__Syms* __restrict vlSymsp);
    static void _sequent__TOP__2(Vbooth4__Syms* __restrict vlSymsp);
    static void _sequent__TOP__4(Vbooth4__Syms* __restrict vlSymsp);
    static void _settle__TOP__3(Vbooth4__Syms* __restrict vlSymsp) VL_ATTR_COLD;
  private:
    static void traceChgSub0(void* userp, VerilatedVcd* tracep);
    static void traceChgTop0(void* userp, VerilatedVcd* tracep);
    static void traceCleanup(void* userp, VerilatedVcd* /*unused*/);
    static void traceFullSub0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceFullTop0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInitSub0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInitTop(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    void traceRegister(VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
