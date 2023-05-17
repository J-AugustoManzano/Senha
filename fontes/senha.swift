// Teste para uso de senha
// Programa didático, não pode ser
// usado profissionalmente
// 
// Linguagem Swift

import Foundation

var T: Int = 3
var CORRETO: Bool = false
var SENHA: Int

repeat {
    print("Entre a senha de acesso: ", terminator: "")
    guard let input = readLine(), let SENHA = Int(input) else {
        continue
    }

    if (SENHA == 123) {
        CORRETO = true
    } else {
        T = T - 1
        print("Tentativas restantes: \(T)")
    }
} while !(CORRETO == true || T == 0) // simulação "until"

if (CORRETO == true) {
    print("Acesso liberado")
} else {
    print("Acesso bloqueado")
}
