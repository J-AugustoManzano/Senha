// Teste para uso de senha
// Programa didático, não pode ser
// usado profissionalmente
//
// Linguagem Pike

int T = 3;
int CORRETO = 0; // "0" representa falso "false"
int SENHA = 0;

int main()
{
  do { // simulação "repeat"

    write("Entre a senha de acesso: ");
    sscanf(Stdio.stdin.gets(), "%d", SENHA);
    if (SENHA == 123) {
      CORRETO = 1; // "1" representa verdadeiro "true"
    } else {
      T = T - 1;
      write("Tentativas restantes: %d\n", T);
    }
  } while (!(CORRETO == 1 || T == 0)); // simulação "until"

  if (CORRETO == 1) {
    write("Acesso liberado\n");
  } else {
    write("Acesso bloqueado\n");
  }

  return 0;
}
