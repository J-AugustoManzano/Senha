// Teste para uso de senha
// Programa didático, não pode ser
// usado profissionalmente
//
// Linguagem Scala

object Main {
  def main(args: Array[String]): Unit = {
      
    var T: Int = 3
    var CORRETO: Boolean = false
    var SENHA: Int = 0

    do { // simulação "repeat"
      println("Entre a senha de acesso: ")
      SENHA = scala.io.StdIn.readInt()
      if (SENHA == 123) {
        CORRETO = true
      } else {
        T = T - 1
        println("Tentativas restantes: $T")
      }
    } while (!(CORRETO == true || T == 0)) // simulação "until"

    if (CORRETO == true) {
      println("Acesso liberado")
    } else {
      println("Acesso bloqueado")
    }
    
  }
}
