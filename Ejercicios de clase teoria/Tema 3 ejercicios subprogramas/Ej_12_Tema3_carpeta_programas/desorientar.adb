--  Ejercicio 12 del Tema 3  (Procedimiento: Desorientar)

WITH ADA.Integer_Text_IO; USE ADA.Integer_Text_IO;
WITH Ada.Text_IO; USE Ada.Text_IO;

PROCEDURE Desorientar (N1, N2: IN OUT Integer; N3: IN Integer) IS
BEGIN
   N1:= N1+N3;
   N2:= N1+N2;
   Put("Mis numeros son: "); put(N1); put(N2); put(N3);
   new_line;
END Desorientar;



