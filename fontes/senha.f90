! Teste para uso de senha
! Programa didático, não pode ser
! usado profissionalmente
! 
! Linguagem FORTRAN 90

program teste_senha
  implicit none
  
  integer :: T = 3
  logical :: CORRETO = .false.
  integer :: SENHA

  do ! simulação "repeat"
    write(*, '(a)', advance='no') "Entre a senha de acesso: "
    read(*, *) SENHA
    if (SENHA == 123) then
      CORRETO = .true.
    else
      T = T - 1
      write(*, '(a, i0)') "Tentativas restantes: ", T
    end if
    if ((CORRETO .eqv. .true.) .or. (T == 0)) exit ! simulação "until"
  end do

  if (CORRETO .eqv. .true.) then
    write(*, '(a)') "Acesso liberado"
  else
    write(*, '(a)') "Acesso bloqueado"
  end if

end program teste_senha
