# Teste para uso de senha
# Programa didático, não pode ser
# usado profissionalmente

T = 3
CORRETO = False
while True: # simulação "repeat"
  SENHA = input("Entre a senha de acesso: ")
  if (SENHA == "123"):
    CORRETO = True
  else:
    T = T - 1
    print(f"Tentativas restantes: {T}")
  if (CORRETO == True) or (T == 0): 
    break # simulação "until"
if (CORRETO == True):
  print("Acesso liberado")
else:
  print("Acesso bloqueado")
