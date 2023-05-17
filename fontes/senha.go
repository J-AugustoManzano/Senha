// Teste para uso de senha
// Programa didático, não pode ser
// usado profissionalmente
// 
// Linguagem Go

package main

import (
  "fmt"
)

func main() {

  var T int = 3
  var CORRETO bool = false
  var SENHA int

  for { // simulação "repeat"
    fmt.Print("Entre a senha de acesso: ")
    fmt.Scanln(&SENHA)
    if (SENHA == 123) {
      CORRETO = true
    } else {
      T = T - 1
      fmt.Println("Tentativas restantes:", T)
    }
    if (CORRETO || T == 0) { 
      break
    } // simulação "until"
  }

  if (CORRETO == true) {
    fmt.Println("Acesso liberado")
  } else {
    fmt.Println("Acesso bloqueado")
  }
  
}
