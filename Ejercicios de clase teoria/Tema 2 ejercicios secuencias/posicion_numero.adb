--Ejercicio 9
--Dado un n�mero y una secuencia de n�meros, determina en qu� posici�n (la primera en que
--aparezca) de la secuencia est� el n�mero inicialmente dado. El n�mero est� en la secuencia



WITH Ada.Integer_Text_Io;
USE Ada.Integer_Text_Io;
WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE posicion_numero IS
 -- Entrada: N (EE)
 -- Pre: -
 -- Salida: 1 String (SE)
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

