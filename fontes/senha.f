      ! Teste para uso de senha
      ! Programa did�tico, n�o pode ser
      ! usado profissionalmente
      !
      ! Linguagem FORTRAN 77

      PROGRAM TESTESEN
      IMPLICIT NONE

      INTEGER T
      LOGICAL CORRETO
      INTEGER SENHA

      T = 3
      CORRETO = .FALSE.

      DO ! simula��o "repeat"
         WRITE(*, '(A)') "Entre a senha de acesso: "
         READ(*, *) SENHA

         IF (SENHA .EQ. 123) THEN
            CORRETO = .TRUE.
         ELSE
            T = T - 1
            WRITE(*, '(A, I0)') "Tentativas restantes: ", T
         END IF

         IF ((CORRETO .EQV. .TRUE.) .OR. (T .EQ. 0)) EXIT ! simula��o "until"
      END DO

      IF (CORRETO .EQV. .TRUE.) THEN
         WRITE(*, '(A)') "Acesso liberado"
      ELSE
         WRITE(*, '(A)') "Acesso bloqueado"
      END IF

      END

