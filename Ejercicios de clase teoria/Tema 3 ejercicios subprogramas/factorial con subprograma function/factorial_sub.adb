--Ejercicio TEMA 3 TEORIA SUBPROGRAMAS


WITH Ada.Integer_Text_Io; USE Ada.Integer_Text_Io;
WITH Ada.Text_IO; USE Ada.Text_IO;

FUNCTION Factorial_sub (N:IN Integer) RETURN Integer is --interfaz de subprograma

 -- Entrada: -                  es N pero no hace falta ponerlo porque esta especificado en la interfaz
 -- Pre: N>0
 -- Salida: -                   es P pero ya hemos declarado que es entero en la interfaz asi que no hay que especificar
 -- Post: devuelve N!
 I,P: Integer;

BEGIN
   P:=1 ; I:=1 ;
   WHILE I<=N LOOP
      P:=P*I;
      I:= I+1;
   END loop ;

   return P;

END factorial_sub;


