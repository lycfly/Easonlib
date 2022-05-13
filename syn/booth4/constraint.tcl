
    set     CLK_SOURCE_LATENCY  		        1
    set     CLK_SOURCE_LATENCY  		        1
    set     CLK_NETWORK_LATENCY 		        1
    set     OUT_LOAD                        0.05
    set     MAX_FANOUT                      20
    set     MAX_CAP                         0.4
    set     MAX_TRAN                        2.0
    set     PERIOD                          10
    
    set ALL_IN_EX_CLK       [remove_from_collection [all_inputs] [get_ports clk]]
    set ALL_EX_OUT          [remove_from_collection [current_design] [all_outputs]]
    set ALL_EX_OUT_IN       [remove_from_collection $ALL_EX_OUT [all_inputs]]
    create_clock [get_ports clk] -name clk -period $PERIOD -waveform [list 0 [expr $PERIOD * 0.5]]
    
    set_clock_uncertainty  -setup   1       [get_clocks clk]
    set_clock_uncertainty  -hold    1        [get_clocks clk]
    set_clock_transition            1          [get_clocks clk]
    
    set_clock_latency      -source 	$CLK_SOURCE_LATENCY 	   [get_clocks clk]
    set_clock_latency            	  $CLK_NETWORK_LATENCY 	   [get_clocks clk]

    set_input_delay   [expr $PERIOD * 0.4]    -clock   clk   $ALL_IN_EX_CLK  -add_delay
    set_output_delay  [expr $PERIOD * 0.6]    -clock   clk   [all_outputs]   -add_delay
    set_input_transition   1.0   $ALL_IN_EX_CLK

    set_load                        $OUT_LOAD [all_outputs]
    set_max_transition              $MAX_TRAN                $ALL_EX_OUT_IN
    set_max_fanout                  $MAX_FANOUT              $ALL_EX_OUT_IN
    set_max_capacitance             $MAX_CAP                 $ALL_EX_OUT_IN
    