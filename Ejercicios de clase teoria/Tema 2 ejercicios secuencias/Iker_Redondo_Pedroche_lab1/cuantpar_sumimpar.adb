--Ejercicio 4 (laboratorio 1)
--Dada una secuencia de enteros terminada en 0 (el 0 sólo puede ser el centinela),
--se debe calcular cuántos enteros pares hay en la secuencia y la suma de los enteros impares.

WITH Ada.Integer_Text_Io;
USE Ada.Integer_Text_Io;
WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE cuantpar_sumimpar IS
 -- Entrada: secuencia de entrada S=s1, s2,... (EE)
 -- Pre: 0= centinela
 -- Salida: dos enteros cuantospar, sumaimpar (SE)
 -- Post: Dar cuantos pares y dar suma impares

   Cuantpar,Sumimpar:Integer:=0; S:Integer;

BEGIN
   Get(S);
   WHILE S /= 0 LOOP
      IF S MOD 2 = 0 THEN
         Cuantpar:= Cuantpar +1;
      ELSE
         sumimpar:= sumimpar + S;
      END IF;
      Get (S);
   END LOOP;
   Put("Cantidad de pares: "); Put (Cuantpar);
   Put_line("");
   Put ("Suma de impares: ") ; Put (sumimpar);
END cuantpar_sumimpar;

-- Casos de prueba:
-- S = 0              --> cuantpar = 0 ; sumimpar= 0
-- S = 1 2 3 4 0      --> cuantpar = 2 ; sumimpar= 4
-- S = 45 89 13 56 0  --> cuantpar = 1 ; sumimpar= 147
