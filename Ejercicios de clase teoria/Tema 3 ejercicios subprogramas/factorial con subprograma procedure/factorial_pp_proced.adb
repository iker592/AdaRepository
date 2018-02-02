--Ejercicio

WITH Ada.Integer_Text_Io; USE Ada.Integer_Text_Io;
WITH Ada.Text_IO; USE Ada.Text_IO;
WITH Factorial_sub_proced;

PROCEDURE factorial_PP_proced IS
 -- Entrada: 1 entero N (EE)
 -- Pre: N>0
 -- Salida: 1 secuencia de enteros
 -- Post:
   P,S:Integer; B:boolean;

BEGIN
   Get (S);
   WHILE S/=0 LOOP            --poniendo factorial (S) luego en el subprograma el valor de S se le asignara a la variable que hallamos declarado como (N: in integer)
      Factorial_sub_proced(S,P,B);   --OJO! subprogrm en el uso de PPs: las funciones son expresiones y los procedimientos son instrucciones (como if o while)
      IF B THEN Put (factorial_sub_proced(S)); END IF; --en este caso el subprgm es un procedimiento asi que usamos el factorial_sub como instruccion
      Get (S);
   END LOOP;


END factorial_PP_proced ;


