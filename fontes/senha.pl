# Teste para uso de senha
# Programa didático, não pode ser
# usado profissionalmente

use strict;
use warnings;

my $T       = 3;
my $CORRETO = 0; # "0" como valor "false"
my $SENHA;

do {
    print "Entre a senha de acesso: ";
    $SENHA = <STDIN>;
    chomp $SENHA;
    if ($SENHA == 123) {
        $CORRETO = 1; # "1" como valor "true"
    } else {
        $T = $T - 1;
        print "Tentativas restantes: $T\n";
    }
} until ($CORRETO == 1 || $T == 0);

if ($CORRETO == 1) {
    print "Acesso liberado\n";
} elsif ($T == 0) {
    print "Acesso bloqueado\n";
}
