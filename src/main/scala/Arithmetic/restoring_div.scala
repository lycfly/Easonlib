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
    val cal_finish = out Bool()
    val dout = out SInt (SIZEINA bits)
 }
 noIoPrefix()
 
 val sign_out = Bool()
 sign_out := io.dinA.sign ^ io.dinB.sign
 val dinA_abs = UInt(SIZEINA + 1 bits)
 val dinB_abs = UInt(SIZEINA + 1 bits)
 dinA_abs := io.dinA.abs

}
