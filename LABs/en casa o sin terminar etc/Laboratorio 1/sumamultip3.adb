--Ejercicio 2 (laboratorio 1)
--Dados dos números naturales N1 y N2, escribe la suma de los múltiplos de 3
--comprendidos entre N1 y N2 (ambos inclusive). N1 es estrictamente menor que N2.
--Apartado opcional. Haz que el programa escriba también cada uno de esos múltiplos de 3.


WITH Ada.Integer_Text_Io;
USE Ada.Integer_Text_Io;
WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE Sumamultip3 IS

 -- Entrada: 2 naturales N1, N2 (EE)
 -- Pre: N1<N2
 -- Salida: 1 natural suma3 (SE)
 -- Post: suma de los multiplos de 3 entre los nºs N1-N2

N1,N2,I:Integer; Suma:integer:=0;

BEGIN
   Get(N1);Get(N2);
   I:=N1;
   put("Los multiplos son: ");
   WHILE I<=N2  LOOP

      IF I MOD 3 =0 THEN
         Suma:= Suma + I;
         put(I);
      END IF;

      I:=I+1;

   END LOOP ;
   Put_Line (" ");
   put_line (" ");
   put("La suma de los multiplos es: ");put(Suma,0);

END sumamultip3;

-- Casos de prueba:
-- N = 600000000 --> Put ("Telefono movil")
-- N = 699999999 --> Put ("Telefono movil")