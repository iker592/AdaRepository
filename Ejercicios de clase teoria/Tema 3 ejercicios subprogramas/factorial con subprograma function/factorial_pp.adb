--Ejercicio

WITH Ada.Integer_Text_Io; USE Ada.Integer_Text_Io;
WITH Ada.Text_IO; USE Ada.Text_IO;
WITH Factorial_sub;

PROCEDURE factorial_PP IS
 -- Entrada: 1 entero N (EE)
 -- Pre: N>0
 -- Salida: 1 secuencia de enteros
 -- Post:
   S,P:Integer;

BEGIN
   Get (S);
   WHILE S/=0 LOOP     --poniendo factorial (S) luego en el subprograma el valor de S se le asignara a la variable que hallamos declarado como (N: in integer)
      P:= Factorial_sub(S); --ó put factorial (S);  --OJO! a una expresion hay que asignarla en alguna variable o algo
      Put (factorial_sub(S));
      Get (S);
   END LOOP;


END factorial_PP ;


