// Teste para uso de senha
// Programa didático, não pode ser
// usado profissionalmente
//
// Linguagem Dart

import 'dart:io';

void main() {
    
  int T = 3;
  bool CORRETO = false;
  int? SENHA;

  do { // simulação "repeat"
    stdout.write('Entre a senha de acesso: ');
    String? input = stdin.readLineSync();
    SENHA = input != null ? int.tryParse(input) : null;
    if (SENHA == 123) {
      CORRETO = true;
    } else {
      T = T - 1;
      print('Tentativas restantes: $T');
    }
  }  while (!(CORRETO == true || T == 0)); // simulação "until"

  if (CORRETO == true) {
    print('Acesso liberado');
  } else {
    print('Acesso bloqueado');
  }
    
}
