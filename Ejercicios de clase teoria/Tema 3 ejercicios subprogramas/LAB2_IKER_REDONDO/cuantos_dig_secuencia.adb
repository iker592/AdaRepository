WITH Contar_Digitos;

WITH Ada.Integer_Text_Io;
USE Ada.Integer_Text_Io;
WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE Cuantos_Dig_Secuencia IS

   N,S:Integer; Digitos:integer:=0;
BEGIN
   N:=0;
   Get(S);
   WHILE S /=0 AND S > N LOOP
      Digitos:= Contar_Digitos (S);
      N:=S;
      Get (S);
      put(digitos,0);Put(",");
   END LOOP;

END Cuantos_Dig_Secuencia;
