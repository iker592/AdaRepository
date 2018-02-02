--Ejercicio 5 (laboratorio 1)
--Dado un número entero positivo N en base decimal, escribe el correspondiente
--número en binario.

WITH Ada.Integer_Text_Io;
USE Ada.Integer_Text_Io;
WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE dec_bin IS
 -- Entrada: 1 entero N (EE)
 -- Pre: N>0
 -- Salida: secuencia de 1s y 0s (SE)
 -- Post: Dar el numero decimal de entrada en binario

N,cociente:integer;
BEGIN
   Get(N);
   Cociente:=N;

   WHILE Cociente /= 1 LOOP

      IF cociente mod 2=0 THEN
         Put('0');
         Cociente:= Cociente/2;

      ELSE
      Cociente:= Cociente/2;
      Put ('1');
      END IF;

   END LOOP;
   Put (1,0); Put(2);

WHILE
END dec_bin;

-- Casos de prueba:
-- N = 600000000 --> Put ("Telefono movil")
