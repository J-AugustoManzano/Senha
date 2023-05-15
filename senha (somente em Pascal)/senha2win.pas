program SENHA2;

uses
  Windows, SysUtils;

function getpwd : char;
var
  CARACTERE : char;
  TECLADO : thandle;
  ESCRITA, NUMCARAC : dword;
begin
  ESCRITA := 0;
  TECLADO := GetStdHandle(STD_INPUT_HANDLE);
  GetConsoleMode(TECLADO, @ESCRITA);
  SetConsoleMode(TECLADO, ESCRITA and not (ENABLE_LINE_INPUT or ENABLE_ECHO_INPUT));
  ReadConsole(TECLADO, @CARACTERE, 1, NUMCARAC, nil);
  SetConsoleMode(TECLADO, ESCRITA);
  getpwd := CARACTERE;
end;
  
function readpwd(var SENHA : string) : string;
var
  CARACTERE: char;
  CR, BS: char;
  I, TAMANHO: integer;
begin
  CR := #13;
  BS := #8;
  I := 0;
  TAMANHO := length(SENHA);
  repeat
    CARACTERE := getpwd();
    if (IsCharAlphaNumeric(CARACTERE)) then
      begin
        write('*');
        I := I + 1;
        if (I > TAMANHO) then
        begin
          SENHA := SENHA + CARACTERE;
          TAMANHO := TAMANHO + 1;
        end
        else
        begin
          SENHA[I] := CARACTERE;
        end;
      end
      else 
      if (CARACTERE = BS) and (I > 0) then
      begin
        write(#8' '#8);
        SENHA := copy(SENHA, 1, I - 1) + copy(SENHA, I + 1, TAMANHO);
        I := I - 1;
        TAMANHO := TAMANHO - 1;
      end;
  until (CARACTERE = CR);
  readpwd := SENHA;
end;
  
var
  CADLOGIN, CADSENHA, ENTLOGIN, ENTSENHA : string;
  TENTATIVAS : integer; 
  
begin
  TENTATIVAS := 3;
  
  writeln('CADASTRO DE ACESSO PARA USUARIO');
  writeln;
  write('Entre nome para login ....: ');
  readln(CADLOGIN);

  write('Entre senha para login ...: ');
  readpwd(CADSENHA);

  writeln;
  writeln;
  writeln('Usuario e senha cadastrados');
  writeln;

  write('Tecle <Enter> para continuar... ');
  readln;
  writeln;  

  repeat
    write('Entre nome do usuario ....: ');
    readln(ENTLOGIN);

    write('Entre senha do usuario ...: ');
    ENTSENHA := readpwd(ENTSENHA);
    writeln;
    writeln;

    if (CADLOGIN = ENTLOGIN) and (CADSENHA = ENTSENHA) then
      begin
        writeln('ACESSO BEM SUCEDIDO');
        break;
      end
    else
      begin
        TENTATIVAS := TENTATIVAS - 1;
        if (TENTATIVAS > 1) then
          writeln('ERRO: SENHA/NOME - VOCE TEM ', TENTATIVAS, ' TENTATIVAS.')
        else 
          writeln('ERRO: SENHA/NOME - VOCE TEM ', TENTATIVAS, ' TENTATIVA.');
        writeln;
      end;
  until not (TENTATIVAS <> 0);

  if (TENTATIVAS = 0) then
    writeln('ACESSO NEGADO');

  writeln;
  write('Tecle <Enter> para encerrar... ');
  readln;

end.
