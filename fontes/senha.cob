       IDENTIFICATION DIVISION.
       PROGRAM-ID. SENHA AS "Teste b�sico de senha".
      * Teste para uso de senha
      * Programa did�tico, n�o pode ser
      * usado profissionalmente
      *
      * Linguagem COBOL (Formul�rio fixo - OpenCobolIDE)
      * N�o � executado nos servi�os online
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SOURCE-COMPUTER. IBM-PC COMPATIVEL.
           OBJECT-COMPUTER. IBM-PC COMPATIVEL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 T         PIC 9        VALUE 3.
       01 CORRETO   PIC X        VALUE 'F'.
       01 SENHA     PIC 9(3).

       PROCEDURE DIVISION.
       MAIN-PARA.

           PERFORM UNTIL (CORRETO = 'V' OR T = 0)
               DISPLAY "Entre a senha de acesso: " WITH NO ADVANCING
               ACCEPT SENHA
               IF (SENHA = 123)
                   MOVE 'V' TO CORRETO
               ELSE
                   SUBTRACT 1 FROM T
                   DISPLAY "Tentativas restantes: " T
               END-IF
           END-PERFORM.

           IF (CORRETO = 'V')
               DISPLAY "Acesso liberado"
           ELSE
               DISPLAY "Acesso bloqueado"
           END-IF.

           STOP RUN.
