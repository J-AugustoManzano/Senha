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

O diretório "fontes" possui alguns códigos escritos em algumas linguagens de programação baseadas no projeto em "*português estruturado*" apresentado. Os programas estão adaptados e configurados para iniciantes em programação e não para programadores experientes. Todos esses programas estão escritos buscando-se a maior proximidade possível com o código em português indicado e de acordo com o livro:

> [Algoritmos](https://www.editoraerica.com.br/algoritmos-logica-para-desenvolvimento-de-programacao-de-computadores/p)
> 
> Lógica para desenvolvimento de programação de computadores
> 
> Editora Érica
> 
> Aurores: José Augusto N. G Manzano e Jayr figueiredo de Oliveira.

![Capa livro](J-AugustoManzano//senha/blob/main/capa.jpg)
