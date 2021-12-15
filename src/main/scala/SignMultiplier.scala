
import spinal.core._

import scala.language.postfixOps

class SignMultiplier (SIZEINA: Int, SIZEINB:Int) extends Component {
  val io = new Bundle {
    val dinA = in SInt (SIZEINA bits)
    val dinB = in SInt (SIZEINB bits)

    val dout = out SInt (SIZEINA + SIZEINB bits)

  }

  io.dout := io.dinA * io.dinB
}
object SignMultiplierInst {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog).generate(new SignMultiplier(SIZEINA = 8, SIZEINB = 8))


  }

   import DesignCompiler._
   val dc_config = DesignCompiler_config(process = 28, freq = 100)
   val dc = new DesignCompilerFlow(
                                     design = new SignMultiplier(SIZEINA = 8, SIZEINB = 8),
                                     topModuleName = "SignMultiplier",
                                     workspacePath = "/mnt/mydata/Easonlib/syn/SignMultiplier",
                                     DCConfig = dc_config,
                                     designPath = ""
   ).doit()
}