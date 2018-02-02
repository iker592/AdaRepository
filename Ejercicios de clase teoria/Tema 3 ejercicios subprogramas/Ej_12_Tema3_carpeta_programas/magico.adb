--  Ejercicio 12 del Tema 3  (Programa principal: Magico)
-- Considera el siguiente algoritmo Magico, e indica qué escribe en la salida.

WITH ADA.Integer_Text_IO; USE ADA.Integer_Text_IO;
WITH Ada.Text_IO; USE Ada.Text_IO;

WITH Operacion;
WITH Desorientar;

PROCEDURE Magico IS
   A,B,C:Integer;
BEGIN
   A:=3;
   B:=3;
   C:= Operacion(A,B);
   Put("Los valores son: "); Put(A); Put(B); Put(C); new_line;
   Desorientar(A, B, C);
   Put("Los valores son: "); Put(A); Put(B); Put(C); new_line;
   Desorientar(A, B, C);
   Put("Los valores son: "); Put(A); Put(B); Put(C); new_line;
   Desorientar(C, A, B); -- OJO cambiado el orden de los parámetros reales
   Put("Los valores son: "); Put(A); Put(B); Put(C); new_line;
   Skip_Line;
END Magico;

