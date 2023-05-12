-- Teste para uso de senha
-- Programa didático, não pode ser
-- usado profissionalmente

T = 3
CORRETO = false
repeat
  io.write("Entre a senha de acesso: ")
  SENHA = tonumber(io.read())
  if (SENHA == 123) then
    CORRETO = true
  else
    T = T - 1
    print("Tentativas restantes: " .. T)
  end
until (CORRETO == true) or (T == 0)
if (CORRETO == true) then
  print("Acesso liberdado")
else
  print("Acesso bloaqueado")
end
