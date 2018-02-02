--Ejercicio 9
--Dado un número y una secuencia de números, determina en qué posición (la primera en que
--aparezca) de la secuencia está el número inicialmente dado. El número está en la secuencia



WITH Ada.Integer_Text_Io;
USE Ada.Integer_Text_Io;
WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE posicion_numero_bool IS
 -- Entrada: N (EE)
 -- Pre: -
 -- Salida: 1 String (SE)
 -- Post: 1ª cifra 9 es tlf fijo, 1ª cifra es 6 tlf movil, ninguna no es tlf

   N,S,Cont1:Integer; HAY:Boolean:=False;
BEGIN
   Cont1:= 0;
   Get(N);
   Get(S);
   WHILE S /=0 AND NOT HAY LOOP
      Cont1:=Cont1+1
      IF S=N THEN HAY:=True;
      END IF;
   END LOOP;
      IF S=0 THEN Put ("posicion: 0");
      ELSE Put ("posicion:"); Put (Cont1);
      END IF;

END posicion_numero_bool;

-- Casos de prueba:
-- N = 600000000 --> Put ("Telefono movil")
-- N = 699999999 --> Put ("Telefono movil")
-- N = 999999999 --> Put ("Telefono fijo")
-- N = 900000000 --> Put ("Telefono fijo")
-- N = 899999999 --> Put ("No es telefono")
-- N = 000000000 --> Put ("No es telefono")
