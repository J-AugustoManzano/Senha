// Teste para uso de senha
// Programa didático, não pode ser
// usado profissionalmente
//
// Linguagem Objective-C

#import <Foundation/Foundation.h>

int T = 3;
BOOL CORRETO = NO;
int SENHA;

int main(int argc, const char * argv[]) {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
  do { // simulação "repeat"
    printf("Entre a senha de acesso: ");
    if (scanf("%d", &SENHA) != 1) {
      NSLog(@"");
      return 1;
    }
    if (SENHA == 123)
      CORRETO = YES;
    else {
      T = T - 1;
      printf("Tentativas restantes: %d\n", T);
    }
  } while (!(CORRETO == YES || T == 0)); // simulação "until"
    
  if (CORRETO == YES)
    printf("Acesso liberadol\n");
  else
    printf("Acesso bloqueado\n");
  
  [pool drain];
  return 0;
}
