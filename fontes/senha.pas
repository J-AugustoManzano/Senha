{* 
Teste para uso de senha
Programa didático, não pode ser
usado profissionalmente
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
      CORRETO := True
    else
      begin
        T := T - 1;
        writeln('Tentativas restantes: ', T);
      end;
  until (CORRETO = True) or (T = 0);
  
  if (CORRETO = True) then
    writeln('Acesso liberado')
  else
    writeln('Acesso bloqueado');
    
end.
