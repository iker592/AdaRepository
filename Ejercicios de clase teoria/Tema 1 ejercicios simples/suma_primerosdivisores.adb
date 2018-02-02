WITH Ada.Integer_Text_Io;
USE Ada.Integer_Text_Io;
WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE Suma_primerosdivisores IS
   M,N,I,Sumadivisores,Cantidaddivisores : Integer;

BEGIN
   put ("Cuantos divisores quieres sumar?" );get (M);
   put ("Introduce el numero: ");Get(N);
   Sumadivisores:=0;
   I:=1;
   Cantidaddivisores:= 0;
   WHILE Cantidaddivisores <M LOOP
      IF N mod I =0 THEN
         Sumadivisores := Sumadivisores+I;
         Cantidaddivisores := Cantidaddivisores + 1;
      END IF;
      I:= I+1;
   END LOOP;
   Put ("Suma de los 4 primeros divisores del numero introducido "); Put(Sumadivisores);
END Suma_primerosdivisores;

