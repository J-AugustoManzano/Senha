// Teste para uso de senha
// Programa didático, não pode ser
// usado profissionalmente
// 
// Linguagem C#

using System;

class Program
{
  static void Main()
  {
        
    int T = 3;
    bool CORRETO = false;
    int SENHA;

    do // simulação "repeat"
    {
        Console.Write("Entre a senha de acesso: ");
        string input = Console.ReadLine();
        if (int.TryParse(input, out SENHA))
        {
            if (SENHA == 123)
            {
              CORRETO = true;
            }
            else
            {
              T = T - 1;
              Console.WriteLine("Tentativas restantes: " + T);
            }
        }
        else
        {
          Console.WriteLine("Entrada inválida! Tente novamente.");
        }
    }
    while (!CORRETO == true || T == 0); // simulação "until"
    if (CORRETO == true)
    {
      Console.WriteLine("Acesso liberado");
    }
    else
    {
      Console.WriteLine("Acesso bloqueado");
    }
      
  }
}
