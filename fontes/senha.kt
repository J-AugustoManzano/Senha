// Teste para uso de senha
// Programa didático, não pode ser
// usado profissionalmente
//
// Linguagem Kotlin

fun main() {
    
    var SENHA: Int
    var T = 3
    var CORRETO = false

    do { // simulação "repeat"
        print("Entre a senha de acesso: ")
        SENHA = readLine()?.toIntOrNull() ?: 0
        if (SENHA == 123) {
            CORRETO = true
        } else {
            T = T - 1
            println("Tentativas restantes: $T")
        }
    } while (!(CORRETO || T == 0)) // simulação "until"

    if (CORRETO) {
        println("Acesso liberado")
    } else {
        println("Acesso bloqueado")
    }
    
}
