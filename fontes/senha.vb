' Teste para uso de senha
' Programa didático, não pode ser
' usado profissionalmente
' 
' Linguagem BASIC (VB.Net)

Module MainModule
  Sub Main()

    Dim T As Integer = 3
    Dim CORRETO As Boolean = False
    Dim SENHA As Integer = 0

    Do
      Console.Write("Entre a senha de acesso: ")
      SENHA = Integer.Parse(Console.ReadLine())
      If SENHA = 123 Then
        CORRETO = True
      Else
        T = T - 1
        Console.WriteLine("Tentativas restantes: " & T)
      End If
    Loop Until (CORRETO = True Or T = 0)

    If (CORRETO = True) Then
      Console.WriteLine("Acesso liberado")
    Else
      Console.WriteLine("Acesso bloqueado")
    End If
    Console.ReadLine()

  End Sub
End Module
