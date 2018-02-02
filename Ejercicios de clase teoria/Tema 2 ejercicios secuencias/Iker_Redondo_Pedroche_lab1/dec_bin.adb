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
 -- Post: Dar el numero decimal de entrada en binario RANGO: 0-1023  -->(2^10)-1

   N,Cociente:Integer;
   exp,valor: integer:=0;
BEGIN
   Get(N);
   Cociente:=N;

   WHILE Cociente /= 1 LOOP                 --para que se salga en la ultima division

      IF cociente mod 2=0 THEN              --cuando el resto es 0
         valor := valor+(0*10**exp);
         Cociente:= Cociente/2;
         exp:=exp+1;
      ELSE                                   --cuando el resto es 1
         valor := valor + (1*10**exp);
         Cociente:= Cociente/2;
         exp:=exp+1;
      END IF;

   END LOOP;
   IF Cociente =1 THEN Valor:=Valor+(1*10**Exp);
   end if;
   Put (valor,0);

END dec_bin;

-- Casos de prueba:
-- N = 16   -->  valor=10000
-- N =  6   -->  valor=110
-- N = 84   -->  valor=1010100
-- N = 845   -->  valor=1101001101
