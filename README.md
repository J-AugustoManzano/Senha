# Exemplos de validação de senha
Exemplos didáticos de validação de senha.

Os programas aqui indicados possuem apelo apenas didático não devem ser implementados da forma que estão para uso profissional em hipótese alguma.

O material aqui apresentado é complemento ao vídeo que trata do assunto no canal "AM-42"

https://youtu.be/He34F9zAnq8

```
programa VALIDA_SENHA

var
  T : inteiro
  CORRETO : lógico
  SENHA : inteiro

início
  T <- 3
  CORRETO <- .falso.
  repita
    escreva "Entre a senha de acesso: "
    leia SENHA
    se (SENHA = 123) então
      CORRETO = .verdadeiro.
    senão
      T <- T - 1
      escreva "Tentativas restantes: ", T
    fim_se
  até_que (CORRETO = .verdadeiro.) .ou. (T = 0)
  if (CORRETO = .verdadeiro.) então
    escreva "Acesso liberado"
  senão
    escreva "Acesso bloqueado"
  fim_se
fim
```
