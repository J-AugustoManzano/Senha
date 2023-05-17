// Teste para uso de senha
// Programa didático, não pode ser
// usado profissionalmente
//
// Linguagem C++

#include <iostream>

int T = 3;
bool CORRETO = false;
int SENHA;

int main(void) 
{
  
  do // simulação "repeat"
   {
      std::cout << "Entre a senha de acesso: ";
      std::cin >> SENHA;
      if (SENHA == 123)
        CORRETO = true;
      else 
       {
         T = T - 1;
         std::cout << "Tentativas restantes: " << T << std::endl;
       }
    } 
  while (not(CORRETO == true or T == 0)); // simulação "until"
  
  if (CORRETO == true)
    std::cout << "Acesso liberado" << std::endl;
  else
    std::cout << "Acesso bloqueado" << std::endl;
  
  return 0;
}
