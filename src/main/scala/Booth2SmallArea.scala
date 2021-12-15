
import spinal.core._

import scala.language.postfixOps

class Booth2SmallArea (SIZEINA: Int, SIZEINB:Int) extends Component {
  val io = new Bundle {
    val din_vld = in Bool()
    val dinA = in SInt (SIZEINA bits)
    val dinB = in SInt (SIZEINB bits)

    val dout_vld = out Bool()
    val dout = out SInt (SIZEINA + SIZEINB bits)

  }
  val MAX_NUM = SIZEINA - 1
  val MAX_DW = log2Up(MAX_NUM)
  val shiftReg = Reg(Bits(SIZEINA + SIZEINB + 1 bits))
  val NegativeB = SInt(SIZEINB bits)
  val cal_cnt = Reg(UInt(MAX_DW bits)) init(0)
  val cal_en = Reg(Bool()) init(false)
  NegativeB := -io.dinB

  when(io.din_vld){
    cal_en := true
  }.elsewhen(cal_cnt === MAX_NUM){
    cal_en := false
  }
  when(cal_en){
    cal_cnt := cal_cnt + 1
  }.elsewhen(io.din_vld){
    cal_cnt := 0
  }
  when(io.din_vld){
    shiftReg(SIZEINA downto 1) := io.dinA
  }.elsewhen(cal_en){
    switch(shiftReg(1 downto 0)){
      is(0){
        shiftReg := shiftReg >> 1
      }
      is(3){
        shiftReg := shiftReg >> 1
      }
      is(1){
        shiftReg(SIZEINA+SIZEINB-1 downto SIZEINB)  := io.dinB
      }
      is(2){
        shiftReg(SIZEINA+SIZEINB-1 downto SIZEINB)  := NegativeB
      }
    }
  }
  io.dout_vld := cal_en.fall
  io.dout := shiftReg

//  io.dout := io.dinA * io.dinB
}
  object Booth2SmallAreaInst {
    def main(args: Array[String]): Unit = {
      SpinalConfig(
        defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
          clockEdge = RISING,
          resetActiveLevel = LOW),
        mode=Verilog).generate(new Booth2SmallArea(SIZEINA = 8, SIZEINB = 8))


    }
  }