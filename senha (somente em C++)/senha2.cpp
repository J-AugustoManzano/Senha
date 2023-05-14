// SENHA2.CPP

#include <iostream>
#include <cstring>
#include <cctype>
#if defined _WIN32 || defined _WIN64
  #include <windows.h>
#else
  #include <termios.h>
  #include <unistd.h>
  #include <cstdio>
#endif
using namespace std;

#if defined _WIN32 || defined _WIN64
  char getpwd(void)
  {
    char CARACTERE;
    HANDLE TECLADO;
    DWORD ESCRITA = 0, NUMCARAC;
    TECLADO = GetStdHandle(STD_INPUT_HANDLE);
    GetConsoleMode(TECLADO, &ESCRITA);
    SetConsoleMode(TECLADO, ESCRITA  & ~(ENABLE_LINE_INPUT | ENABLE_ECHO_INPUT));
    ReadConsole(TECLADO, &CARACTERE, 1, &NUMCARAC, NULL);
    SetConsoleMode(TECLADO, ESCRITA);
    return CARACTERE;
  }
#else
  int getpwd(void)
  {
    int CARACTERE;
    termios LEITURA;
    termios TECLADO;
    tcgetattr(STDIN_FILENO, &LEITURA);
    TECLADO = LEITURA;
    LEITURA.c_lflag &= ~(ICANON | ECHO);
    tcsetattr(STDIN_FILENO, TCSANOW, &LEITURA);
    CARACTERE = getchar();
    tcsetattr(STDIN_FILENO, TCSANOW, &TECLADO);
    return CARACTERE;
  }
#endif

char readpwd(char *SENHA)
{
  char CARACTERE;
  #if defined _WIN32 || defined _WIN64
    char CR = (char)  13;
    char BS = (char)   8;
  #else
    char CR = '\n';
    char BS = (char) 127;
  #endif
  int I = 0;
  do
    {
      CARACTERE = getpwd();
      if (isprint(CARACTERE))
        {
           cout << "*";
           SENHA[I] = CARACTERE;
           ++I;
        }
      else
        if (CARACTERE == BS && I != 0)
          {
             cout << "\b \b";
             SENHA[I] = '\0';
             --I;
          }
    }
  while(CARACTERE != CR);
  SENHA[I] = '\0';
  return *SENHA;
}

int main(void)
{

  char CADLOGIN[41], CADSENHA[11], ENTLOGIN[41], ENTSENHA[11];
  int TENTATIVAS = 3;

  cout << "CADASTRO DE ACESSO PARA USUARIO" << endl << endl;
  cout << "Entre nome para login ....: ";
  cin >> CADLOGIN;
  cin.ignore(80,'\n');

  cout << "Entre senha para login ...: ";
  readpwd(CADSENHA);

  cout << endl << endl;
  cout << "Usuario e senha cadastrados";
  cout << endl << endl;

  cout << "Tecle <Enter> para continuar... ";
  cin.get();
  cout << endl;

  do
    {

      cout << "Entre nome do usuario ....: ";
      cin >> ENTLOGIN;
      cin.ignore(80,'\n');

      cout << "Entre senha do usuario ...: ";
      readpwd(ENTSENHA);

      cout << endl << endl;
      if (not strcmp(CADLOGIN, ENTLOGIN) != 0 and not strcmp(CADSENHA, ENTSENHA) != 0)
        {
          cout << "ACESSO BEM SUCEDIDO" << endl;
          break;
        }
      else
        {
          --TENTATIVAS;
          if (TENTATIVAS != 0)
            {
              if (TENTATIVAS > 1)
                cout << "ERRO: SENHA/NOME - VOCE TEM " << TENTATIVAS << " TENTATIVAS.";
              else
                cout << "ERRO: SENHA/NOME - VOCE TEM " << TENTATIVAS << " TENTATIVA.";
              cout << endl << endl;
            }
        }
    }
  while (TENTATIVAS != 0);

  if (TENTATIVAS == 0)
    cout << "ACESSO NEGADO" << endl;

  cout << endl;
  cout << "Tecle <Enter> para encerrar... ";
  cin.get();
  return 0;
}
