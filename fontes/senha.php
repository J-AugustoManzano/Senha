<?php

  // Teste para uso de senha
  // Programa didático, não pode ser
  // usado profissionalmente
  //
  // Linguagem PHP

  $T = 3;
  $CORRETO = false;
  $SENHA = 0;

  do { // simulação "repeat"
    echo "Entre a senha de acesso: ";
    $SENHA = (int) readline();
    if ($SENHA == 123) {
      $CORRETO = true;
    } else {
      $T = $T - 1;
      echo "Tentativas restantes: " . $T . "\n";
    }
  } while (!($CORRETO == true || $T == 0)); // simulação "until"

  if ($CORRETO == true) {
    echo "Acesso liberado\n";
  } else {
    echo "Acesso bloqueado\n";
  }

?>
