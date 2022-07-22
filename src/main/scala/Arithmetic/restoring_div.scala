package Arithmetic
import spinal.core._
import spinal.core.sim._
import scala.language.postfixOps


class restoring_div (SIZEINA: Int, SIZEINB:Int) extends Component {
  val io = new Bundle {
    val din_vld = in Bool()
    val dinA = in SInt (SIZEINA bits)
    val dinB = in SInt (SIZEINB bits)

    val dout_vld = out Bool()
    val quot = out SInt (SIZEINA+1 bits)
    val remainder = out SInt (SIZEINB bits)

 }
 noIoPrefix()
 
 val sign_out = Bool()
 sign_out := io.dinA.sign ^ io.dinB.sign
 val dinA_abs = UInt(SIZEINA bits)
 val dinB_abs = UInt(SIZEINB bits)
 dinA_abs := io.dinA.abs
 dinB_abs := io.dinB.abs

 val quotient = Reg(Bits(SIZEINA bits)) init(0)

 val divisior = Reg(Bits(SIZEINB + 1 bits)) init(0)
//  val divisior_neg = Bits(SIZEINB + 1 bits)
//  divisior_neg := ((~divisior).asUInt + 1).asBits

 when(io.din_vld){
    divisior := dinB_abs.asBits.resized
 }

val PR_DW = SIZEINA + SIZEINB
val p_remainder = Reg(Bits(PR_DW + 1 bits)) init(0)
val p_r_shift = p_remainder |<< 1
val p_r_calpart = Bits(SIZEINB + 1 bits)
val p_r_minus_d = Bits(SIZEINB + 1 bits)
val p_r_part_next = Bits(SIZEINB + 1 bits)

p_r_calpart := p_r_shift(PR_DW downto SIZEINA)
p_r_minus_d := (p_r_calpart.asSInt - divisior.asSInt).asBits

p_r_part_next := Mux(p_r_minus_d.msb, p_r_calpart, p_r_minus_d)

 val CNT_DW = log2Up(SIZEINA-1)
 val control_cnt = Reg(UInt(CNT_DW bits)) init(0)
 val doing = Reg(Bool()) init(False)
 val finish_pulse = control_cnt === SIZEINA - 1
 when(io.din_vld){
    doing.set()
  }.elsewhen(finish_pulse){
    doing.clear()
  }
when(io.din_vld){
    control_cnt := 0
}.elsewhen(doing){
    control_cnt := control_cnt + 1
}.elsewhen(finish_pulse){
    control_cnt := 0
}

when(io.din_vld){
    p_remainder := B(0, SIZEINB + 1 bits) ## dinA_abs
}.elsewhen(doing){
    p_remainder := p_r_part_next ## p_r_shift(SIZEINA-1 downto 0)
}
var i = 0
for( i <- 0 to SIZEINA-1){
    when(io.din_vld){
        quotient(i) := False
    }.elsewhen(doing){
        when(control_cnt === i){
          quotient(i) := ~p_r_minus_d.msb
        }
    }
}

val quot_reversed = Bits(SIZEINA bits)
quot_reversed := quotient.reversed

io.remainder := p_remainder(PR_DW-1 downto SIZEINA).asSInt
io.quot := Mux(sign_out, (B(1,1 bits) ## ((~quot_reversed).asUInt + 1).asBits).asSInt, (B(0,1 bits) ## quot_reversed).asSInt)
io.dout_vld := RegNext(finish_pulse) init(False)

}



object restoring_div_inst {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog,
      targetDirectory="rtl"
      ).generate(new restoring_div(SIZEINA = 28, SIZEINB = 10))


  }
}


object restoring_div_test{
  import scala.math._
  def main(args: Array[String]): Unit = {
    val A = 8
    val B = 4
    val testcase_coverage = 0.05
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
        mode=Verilog,
        targetDirectory="rtl"
      ).generate(new restoring_div(SIZEINA = A, SIZEINB = B))
  var start_time = 0.0
  var end_time = 0.0
  val compiled = SimConfig.withFstWave.allOptimisation.compile(
  //val compiled = SimConfig.allOptimisation.compile(
    rtl = new restoring_div(SIZEINA = A, SIZEINB = B))
  compiled.doSim { dut =>
    dut.clockDomain.forkStimulus(2)
    dut.io.din_vld #= false

    sleep(100)
    println("test")
    start_time = (simTime()/1000.0).toFloat
    var a,b,c,d = 0

    val A_bound = pow(2,A-1).toInt
    val B_bound = pow(2,B-1).toInt
    var true_out = 0
    var signed_bit = 0
    var num_bits = 0

    dut.clockDomain.waitSampling()
    val driver_thread = fork{
      for (a <- (-A_bound) to (A_bound-1)){
        for (b <- (-B_bound) to (-1)) {
          if(b != 0){
            dut.io.din_vld #= true
            dut.io.dinA #= a
            dut.io.dinB #= b
            dut.clockDomain.waitSampling()
            dut.io.din_vld #= false
            dut.clockDomain.waitSamplingWhere(dut.io.dout_vld.toBoolean)
          }
        }
      }
    }
    val monitor_thread = fork{
       for (c <- (-A_bound) to (A_bound-1)){
        for (d <- (-B_bound) to (-1)) {
          dut.clockDomain.waitSamplingWhere(dut.io.dout_vld.toBoolean)
          signed_bit = (((dut.io.quot.toInt >> A) & 1)*2-1)
          if(signed_bit == -1){
            num_bits =  dut.io.quot.toInt & ((1<<A)-1)
          }else{
            num_bits =(((~dut.io.quot.toInt)+1) & ((1<<A)-1))
          }
          true_out = (-1) * signed_bit * num_bits
          assert((c/d)==true_out,"data Mismathc")
          
          println(s"PASSED! Input A = ${c}, B = ${d}. DUT Result = ${true_out}; Expect Result = ${c/d}")

        }}
    }
    monitor_thread.join()
    sleep(10)
    end_time = (simTime()*testcase_coverage/1000.0).toFloat
    println(start_time)
    println(end_time)
    simSuccess()

  }
}
}