-- Teste para uso de senha
-- Programa didático, não pode ser
-- usado profissionalmente
-- 
-- Linguagem Ada

with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Senha is

  T : Integer := 3;
  CORRETO : Boolean := False;
  SENHA : Integer := 0;

begin

  loop
    Ada.Text_IO.Put("Entre a senha de acesso: ");
    Ada.Integer_Text_IO.Get(Item => SENHA);
    if SENHA = 123 then
       CORRETO := True;
    else
       T := T - 1;
       Ada.Text_IO.Put_Line("Tentativas restantes: " & Integer'Image(T));
    end if;
    exit when (CORRETO = True or T = 0); -- simulação "repeat/until"
  end loop;

  if (CORRETO = True) then
    Ada.Text_IO.Put_Line("Acesso liberado");
  else
    Ada.Text_IO.Put_Line("Acesso bloqueado");
  end if;

end Senha;
