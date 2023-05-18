# Exemplos de validação de senha
Exemplos didáticos de validação de senha.

Os programas aqui indicados possuem apelo apenas didático e não devem ser implementados da forma que estão para uso profissional em hipótese alguma.

O objetivo é mostrar que a ideia expressa em sua forma lógica e codificada em "português estruturado" pode ser implementada em diversas linguagens de programação como fora planejada.

O material aqui indicado é complemento ao vídeo que trata do assunto no canal "AM-42"

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

O diretório "fontes" possui alguns códigos escritos em algumas linguagens de programação baseadas no projeto em "*português estruturado*" apresentado. Os programas estão adaptados e configurados para iniciantes em programação e não para programadores experientes. Todos esses programas estão escritos buscando-se a maior proximidade possível com o código adotado no livro:

> [Algoritmos](https://www.editoraerica.com.br/algoritmos-logica-para-desenvolvimento-de-programacao-de-computadores/p)
> 
> **Lógica para desenvolvimento de programação de computadores**
> 
> **Editora Érica**
> 
> **Aurores: José Augusto N. G Manzano e Jayr figueiredo de Oliveira.**

![Capa livro](https://github.com/J-AugustoManzano/senha/blob/main/capa.jpg)

**Material extra - complementar**

O diretório "senha (somente em C++)" possui uma versão sofisticada de um programa chamado "senha2.cpp" para o tratamento de senha escrito em C++, tanto no Windows como no Linux a partir da técnica de codificação "cross-platform". Assim como os demais programas este é apenas um exemplo operacional com intuito didático. Não deve ser utilizado profissionalmente da forma apresentada. Neste programa a entrada da senha ocorre com a substituição dos caracteres informados por "asteriscos". 

Exemplo similar ao programa escrito em C++ encontra-se um programa escrito em Pascal junto ao diretório "senha (somente em Pascal)" a partir do programa "senha2win.pas", O código deste programa, diferentemente do programa C++, é codificado apenas para o Sistema Operacional Windows.

Estes e os demais programas devem ser tratados e usados com extrema cautela.
