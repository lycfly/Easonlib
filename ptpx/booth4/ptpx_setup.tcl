
    set lib_path          "/mnt/data/projects/ic_lib/tsmc28"
    set search_path       ". $lib_path"

    set target_library    "tcbn28hpcplusbwp7t35p140tt0p8v25c_ccs.db \
                            "
    
    set link_library      " * \
                           $target_library"
    