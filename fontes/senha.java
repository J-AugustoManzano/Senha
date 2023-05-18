// Teste para uso de senha
// Programa didatico, nao pode ser
// usado profissionalmente
//
// Linguagem Java 8

import java.util.Scanner;

public class Main {
  public static void main(String[] args) {
        
    int T = 3;
    boolean CORRETO = false;
    int SENHA;

    Scanner scanner = new Scanner(System.in);

    do { // simulacao "repeat"
      System.out.print("Entre a senha de acesso: ");
      SENHA = scanner.nextInt();
      scanner.nextLine(); 
      if (SENHA == 123) {
        CORRETO = true;
      } else {
        T = T - 1;
        System.out.print("Tentativas restantes: " + T + "\n");
      }
    } while (!(CORRETO == true || T == 0)); // simulacao "until"

    if (CORRETO == true) {
      System.out.println("Acesso liberado");
    } else {
      System.out.println("Acesso bloqueado");
    }
  }
}
