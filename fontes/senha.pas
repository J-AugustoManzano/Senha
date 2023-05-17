{* 
Teste para uso de senha
Programa didático, não pode ser
usado profissionalmente

Linguagem Pascal (Free Pascal Compilaer)
*}

program VALIDA_SENHA;

var
  T : integer;
  CORRETO : boolean;
  SENHA : integer;

begin

  T := 3;
  CORRETO := False;
  
  repeat
    write('Entre a senha de acesso: ');
    readln(SENHA);
    if (SENHA = 123) then
      CORRETO := true
    else
      begin
        T := T - 1;
        writeln('Tentativas restantes: ', T);
      end;
  until (CORRETO = true) or (T = 0);
  
  if (CORRETO = true) then
    writeln('Acesso liberado')
  else
    writeln('Acesso bloqueado');
    
end.
