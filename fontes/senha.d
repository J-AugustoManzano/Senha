// Teste para uso de senha
// Programa didático, não pode ser
// usado profissionalmente
//
// Linguagem D

import std.stdio;

int T = 3;
bool CORRETO = false;
int SENHA;

void main() 
{

  do // silulação "repeat"
    {
      write("Entre a senha de acesso: ");
      readf(" %s", &SENHA);
      if (SENHA == 123)
        CORRETO = true;
      else 
        {
          T = T - 1;
          writeln("Tentativas restantes: ", T);
        }
    }
  while (!(CORRETO == true || T == 0)); // simulação "until"
  
  if (CORRETO == true)
    writeln("Acesso liberado");
  else
    writeln("Acesso bloqueado");
  
}