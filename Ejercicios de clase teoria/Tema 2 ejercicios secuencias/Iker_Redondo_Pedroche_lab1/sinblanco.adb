--Ejercicio 3 (laboratorio 1)
--Dada una secuencia de caracteres terminada en punto, escribe (en la salida
--estándar) la misma secuencia sin los caracteres blanco.

WITH Ada.Integer_Text_Io;
USE Ada.Integer_Text_Io;
WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE sinblanco IS
 -- Entrada: Secuencia de entrada S=s1, s2,... (EE)
 -- Pre: Centinela= "."
 -- Salida: 1 String (SE)
 -- Post: Dar la secuencia de entrada sin los caracteres en blanco [y contarlos (parte opcional)]

   S:Character; Suma:Integer:=0;

BEGIN
   Get(S);
   WHILE S /= '.' LOOP

      IF S /=' ' THEN
         Put(S) ;
      ELSE
         suma :=suma+1;
      END IF;

      Get (s);
   END LOOP;

   IF S= '.' THEN Put(S);
   END IF;

   put_line (" ");
   put ("Numero de caracteres en blanco: ") ; Put (Suma,0);

END sinblanco;

-- Casos de prueba:
-- S= "_." --> . suma=1
-- S= "hola que tal ." --> holaquetal 3
