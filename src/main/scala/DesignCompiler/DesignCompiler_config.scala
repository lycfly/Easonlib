package DesignCompiler

case class process_path (proc:Int){
  val path_map = Map(180 -> "/mnt/mydata/spinal_works/18um/Technology/TSMC/core/synopsys/db/nopower",
                     28 -> "/root/lib"
  )
  val lib_map = Map(180 -> "core_slow.db",
                    28 -> "tcbn28hpcplusbwp7t35p140ssg0p81v125c_ccs.db"
  )
}

case class DesignCompiler_config (
                                   process: Int = 180,
                                   freq: Int = 100
                                 ){
  val lib_path = process_path(process).path_map(process)
  val target_library  = process_path(process).lib_map(process)
}
