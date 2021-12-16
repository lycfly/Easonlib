
    set TOP_MODULE Booth2SmallArea
    set compile_enable_register_merging    true
    set compile_seqmap_propagate_constants true
    set verilogout_no_tri   "true"
    set verilogout_equation "false"
    set mv_default_level_shifter_voltage_range_infinity true

    source -e -v "dc_setup.tcl"

    set change_names_dont_change_bus_members      true
    set compile_disable_hierarchical_inverter_opt true
    set auto_insert_level_shifters_on_clocks      all
    set auto_insert_level_shifters true
    analyze -format verilog "/mnt/mydata/Easonlib/syn/Booth2SmallArea/Booth2SmallArea.v"  -define DC_SYN
    
    elaborate       $TOP_MODULE
    current_design  $TOP_MODULE
    link
    source -e -v "constraint.tcl"

    report_clock
    check_design > ./rpt/check_deisgn.rpt
    check_timing  > ./rpt/check_timing.rpt
    set_clock_gating_style -setup 0.3 -hold 0 -pos integrated -neg integrated -max_fanout 32 -control_point before -control_signal scan_enable
    check_timing
    group_path -name INPUT_GROUP -from [all_inputs ]
    group_path -name OUTPUT_GROUP -to  [all_outputs]
    set upf_create_implicit_supply_sets false

    set_fix_multiple_port_nets -all -buffer_constants
    set_fix_multiple_port_nets -all -buffer_constants [all_designs]
    compile_ultra -no_autoungroup  -no_boundary_optimization  -gate_clock
    #compile_ultra -timing_high_effort_script -no_autoungroup  -no_boundary_optimization
    #compile_ultra -timing_high_effort_script -no_autoungroup  -no_boundary_optimization -incremental

    set verilogout_no_tri   "true"
    set verilogout_equation "false"
    change_names -hier -rules verilog

    write_sdc                                ./outputs/$date/${TOP_MODULE}.sdc
    write -format ddc     -hierarchy -output ./outputs/$date/${TOP_MODULE}.ddc
    write -format verilog -hierarchy -output ./outputs/$date/${TOP_MODULE}.v
    write_link_library -out                  ./outputs/$date/link_library.txt

    report_constraint -all_vio > ./rpt/$date/constrant.rpt
    report_area   -hier        > ./rpt/$date/area.rpt
    report_constraint  -all_violators                         > ./rpt/$date/${TOP_MODULE}_constraint_all_violators.rpt
    check_timing                                              > ./rpt/$date/${TOP_MODULE}_check_timing_final.rpt
    report_timing_requirements                                > ./rpt/$date/${TOP_MODULE}_report_timing_requirements.rpt
    report_timing -transition_time -nets -attributes -nosplit > ./rpt/$date/${TOP_MODULE}_mapped_timing.rpt
    report_area -physical -nosplit -hierarchy                 > ./rpt/$date/${TOP_MODULE}_mapped_area.rpt
    report_power                                              > ./rpt/$date/${TOP_MODULE}_power.rpt
    report_cell                                               > ./rpt/$date/${TOP_MODULE}_cell.rpt
    #report_timing  -delay max -max_paths 50                   > ./rpt/$date/${TOP_MODULE}_timing_max_path.rpt
    report_timing  -delay max -path_type full_clock_expanded -sort_by slack -max_paths 50 -nosplit                   > ./rpt/$date/${TOP_MODULE}_timing_max_path.rpt
    report_timing  -delay min -path_type full_clock_expanded -sort_by slack -max_paths 50 -nosplit                   > ./rpt/$date/${TOP_MODULE}_timing_min_path.rpt
    report_reference                                          > ./rpt/$date/${TOP_MODULE}_ref.rpt

    report_power -hierarchy -levels 3                         > ./rpt/$date/${TOP_MODULE}_hie_power.rpt
    report_power -verbose                                     > ./rpt/$date/${TOP_MODULE}_total_power.rpt
    report_clock_gating -gated -verbose                       > ./rpt/$date/${TOP_MODULE}_clock_gating_gated.rpt
    report_clock_gating -ungated -verbose                     > ./rpt/$date/${TOP_MODULE}_clock_gating_ungated.rpt
    