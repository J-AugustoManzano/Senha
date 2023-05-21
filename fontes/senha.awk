# Teste para uso de senha
# Programa didático, não pode ser
# usado profissionalmente
#
# Linguagem Awk

BEGIN {

  T = 3;
  CORRETO = 0; # "0" para falso
  SENHA = 0;

  while (1) { # simulação "repeat"
    printf("Entre a senha de acesso: ");
    getline SENHA < "/dev/tty";
    if (SENHA == 123)
      CORRETO = 1; # "1" para verdadeiro
    else {
      T = T - 1;
      printf("Tentativas restantes: %d\n", T);
    }
    if (CORRETO == 1 || T == 0)  # simulação "until"
      break;
  }

  if (CORRETO == 1)
    printf("Acesso liberado\n");
  else
    printf("Acesso bloqueado\n");

}
