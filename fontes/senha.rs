// Teste para uso de senha
// Programa didático, não pode ser
// usado profissionalmente
// 
// Linguagem Rust

use std::io::{self, Write};

fn senha() {

    let mut T: i32 = 3;
    let mut CORRETO: bool = false;
    let mut SENHA: i32;

    loop { // simulação "repeat"
        print!("Entre a senha de acesso: ");
        io::stdout().flush().unwrap();
        let mut input = String::new();
        io::stdin().read_line(&mut input).unwrap();
        SENHA = input.trim().parse().unwrap();
        if (SENHA == 123) {
            CORRETO = true;
        } else {
            T = T - 1;
            println!("Tentativas restantes: {}", T);
        }
        if (CORRETO == true || T == 0) {
            break;
        } // simulação "until"
    }

    if (CORRETO == true) {
        println!("Acesso liberado");
    } else {
        println!("Acesso bloqueado");
    }
}
