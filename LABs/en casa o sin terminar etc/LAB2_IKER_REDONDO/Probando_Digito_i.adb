--Ejercicio 1.2 LABORATORIO 2
WITH Digito_I;

WITH Ada.Text_Io, Ada.Integer_Text_Io;
USE Ada.Text_Io, Ada.Integer_Text_Io;

PROCEDURE Probando_Digito_I IS
--Entrada: 1 entero (EE), en este caso de prueba 987654321
--Pre: Num es un teléfono, 1<=I<=9
--Salida: 1 entero Digito_(Num)(SE)
--Post: devuelve el I-ésimo dígito del teléfono Num
BEGIN
   Put_Line("Probando Digito_i con el numero de telefono 987654321");
   Put_Line("***  Probaremos con todos los dígitos del numero  ***");
   New_Line;
   FOR I IN 1..9 LOOP
      Put("- Digito "); put(i,0); put(": ");
      Put(Digito_I(987654321, I), 0);
      New_Line;
   END LOOP;
   New_Line; Put_Line("Fin de la prueba.");
END Probando_Digito_I;


