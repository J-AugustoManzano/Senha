// Teste para uso de senha
// Programa didático, não pode ser
// usado profissionalmente
//
// Linguagem C

#include <stdio.h>
#include <stdbool.h>

int T = 3;
bool CORRETO = false;
int SENHA;

int main(void) 
{

  do // silulação "repeat"
    {
      printf("Entre a senha de acesso: ");
      scanf("%d", &SENHA);
      if (SENHA == 123)
        CORRETO = true;
      else 
        {
          T = T - 1;
          printf("Tentativas restantes: %d\n", T);
        }
    }
  while (!(CORRETO == true || T == 0)); // simulação "until"
  
  if (CORRETO == true)
    printf("Acesso liberado\n");
  else
    printf("Acesso bloqueado\n");
  
  return 0;
}
