# Teste para uso de senha
# Programa didático, não pode ser
# usado profissionalmente
# 
# Linguagem Julia

T = 3
CORRETO = false
SENHA = 0

while (true) # simulação "repeat"
  print("Entre a senha de acesso: ")
  global SENHA = parse(Int, readline())
  if (SENHA == 123)
    global CORRETO = true
  else
    global T = T - 1
    println("Tentativas restantes: ", T)
  end

  if (CORRETO == true || T == 0) # simulação "until"
    break
  end
end

if (CORRETO == true)
  println("Acesso liberado")
else
  println("Acesso bloqueado")
end
