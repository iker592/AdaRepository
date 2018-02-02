--Ejercicio 5 (laboratorio 1)
--Dado un número entero positivo N en base decimal, escribe el correspondiente
--número en binario.

WITH Ada.Integer_Text_Io;
USE Ada.Integer_Text_Io;
WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE dec_bin_REV2 IS
 -- Entrada: 1 entero N (EE)
 -- Pre: N>0
 -- Salida: secuencia de 1s y 0s (SE)
 -- Post: Dar el numero decimal de entrada en binario

N,cociente:integer;
BEGIN
   Get(N);
   Cociente:=N;

   WHILE Cociente /= 1 LOOP                 --para que se salga en la ultima division

      IF cociente mod 2=1 THEN
         Put('1');
         put_LINE("");                      --cuando el resto es 1
         Cociente:= Cociente/2;
      ELSE
         Put('0');
         put_LINE("");                      --cuando el resto es 0
         Cociente:= Cociente/2;
      END IF;

   END LOOP;


   FOR Num IN REVERSE 0..1 LOOP
      Put (Num,0);                             --Para invertir 0s y 1s
   END LOOP;
  Put (1,0);                                   --como me salgo cuando la ultima division da cero, falta poner un 1


END dec_bin_REV2;

-- Casos de prueba:
-- N = --> 