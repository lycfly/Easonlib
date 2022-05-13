
    set DESIGN_NAME booth4
    set SDC "/mnt/data/projects/kws/Easonlib/syn/booth4/outputs/test/booth4.sdc"
    set NETLIST "/mnt/data/projects/kws/Easonlib/syn/booth4/outputs/test/booth4.v"
    set SAD "/mnt/data/projects/kws/Easonlib/simWorkspace/booth4/test.vcd"   
    
    set power_enable_analysis TRUE
    set power_analysis_mode time_based
    set power_model_preference nlpm
    set auto_wire_load_selection false
    set power_clock_network_include_register_clock_pin_power false

    source -e -v ./ptpx_setup.tcl
    read_verilog $NETLIST
    current_design $DESIGN_NAME
    link

    set_wire_load_mode top
    #set_wire_load_model      -name zero [current_design]
    set auto_wire_load_selection true

    source -e -v $SDC

    read_vcd -time {0.1 32.7736} $SAD  -strip_path "TOP/booth4"

    check_power
    update_power
    report_power -hierarchy -levels 3 > ./rpt/${run_date}/${DESIGN_NAME}_hie.rpt
    report_power -verbose > ./rpt/${run_date}/${DESIGN_NAME}_total.rpt

    report_power -hierarchy -levels 2 -sort_by total_power  > ./rpt/${run_date}/${DESIGN_NAME}_hie_level2_sort.rpt
    report_power -hierarchy -levels 3 -sort_by total_power  > ./rpt/${run_date}/${DESIGN_NAME}_hie_level3_sort.rpt
    report_power -hierarchy -levels 4 -sort_by total_power  > ./rpt/${run_date}/${DESIGN_NAME}_hie_level4_sort.rpt
    report_power -hierarchy -levels 5 -sort_by total_power  > ./rpt/${run_date}/${DESIGN_NAME}_hie_level5_sort.rpt
    report_power -hierarchy -levels 6 -sort_by total_power  > ./rpt/${run_date}/${DESIGN_NAME}_hie_level6_sort.rpt
    report_power -hierarchy -levels 7 -sort_by total_power  > ./rpt/${run_date}/${DESIGN_NAME}_hie_level7_sort.rpt
    report_power -hierarchy -levels 8 -sort_by total_power  > ./rpt/${run_date}/${DESIGN_NAME}_hie_level8_sort.rpt
    report_power -hierarchy -levels 9 -sort_by total_power  > ./rpt/${run_date}/${DESIGN_NAME}_hie_level9_sort.rpt
    report_power -hierarchy -levels 10 -sort_by total_power  > ./rpt/${run_date}/${DESIGN_NAME}_hie_level10_sort.rpt

    #report_power -verbose -cell_power {U_OCT_TOP_0/U_OCT_MEM_TOP_0} > ./rpt/${run_date}/${DESIGN_NAME}_sram_power.rpt
    report_clock_gate_savings -hierarchical -sequential > ./rpt/${run_date}/${DESIGN_NAME}_clock_gate_savings.rpt


    file copy -force ./rpt/${run_date}/${DESIGN_NAME}_hie.rpt new_hie_power.rpt
    file copy -force ./rpt/${run_date}/${DESIGN_NAME}_total.rpt new_total_power.rpt
    exit
    