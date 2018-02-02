--Ejercicio
--Dado un número y una secuencia de números, determina EL PRIMER NUMERO IGUAL AL PEDIDO

WITH Ada.Integer_Text_Io;
USE Ada.Integer_Text_Io;
WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE posicion_numero IS
 -- Entrada: N(natural),S(secuencia) (EE)
 -- Pre: -
 -- Salida:
 -- Post:

   N,S,Cont1:Integer;
BEGIN
   Cont1:= 1;
   Get(N);
   Get(S);
   WHILE S /=0 AND S /= N LOOP
      Cont1:=Cont1+1;
      Get (S);
   END LOOP;
   IF N=S THEN Put ("la posicion de N es:" );Put (Cont1,0);
   --o IF S=0 THEN put ("la posicion de N es:" );put (cont1,0);
   ELSE Put ("la posicion de N es:" );Put ("0");
   END IF;

END posicion_numero;

-- Casos de prueba:
-- N = 600000000 --> Put ("Telefono movil")
-- N = 699999999 --> Put ("Telefono movil")
-- N = 999999999 --> Put ("Telefono fijo")
-- N = 900000000 --> Put ("Telefono fijo")
-- N = 899999999 --> Put ("No es telefono")
-- N = 000000000 --> Put ("No es telefono")
