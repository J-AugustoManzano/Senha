' Teste para uso de senha
' Programa didático, não pode ser
' usado profissionalmente

dim T as integer = 3
dim CORRETO as boolean = false
dim SENHA as integer

do
  input "Entre a senha de acesso: ", SENHA
  if (SENHA = 123) then
    CORRETO = true
  else
    T = T - 1
    print "Tentativas restantes: "; T
  end if
loop until (CORRETO = true) or (T = 0)

if (CORRETO = true) then
  print "Acesso liberado"
else
  print "Acesso bloqueado"
end if
