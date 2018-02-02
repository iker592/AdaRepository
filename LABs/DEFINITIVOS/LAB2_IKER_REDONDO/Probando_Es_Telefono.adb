--EJERCICIO 1.1 LABORATORIO 2
WITH Es_Telefono;


WITH Ada.Text_Io, Ada.Integer_Text_Io;
USE Ada.Text_Io, Ada.Integer_Text_Io;

PROCEDURE Probando_Es_Telefono IS
   PROCEDURE Escribe_si_Telefono (N : Natural) IS
-- pre: --
-- post: será cierto sii (999999999>=Num >= 600000000) y Num empieza por 9, 7 o 6.
   BEGIN
      Put(" -----> ");
      IF Es_Telefono(N)THEN
         Put("  es telefono ");
      ELSE
         Put("  no es telefono ");
      END IF;
      New_Line(2);
   END Escribe_si_Telefono;

BEGIN
   Put_Line("Pruebas para Es_Telefono"); New_Line;

   -- Caso 1: Teléfono fijo
   Put("Caso 1: Telefono fijo, 943234567");
   Escribe_Si_Telefono(943234567);

   -- Caso 2: Número de menos de 9 cifras
   Put("Caso 2: Numero de menos de 9 cifras, 123456");
   Escribe_Si_Telefono(123456);

   -- Caso 3: Teléfono móvil que empieza por 6
   Put("Caso 3: Telefono movil que empieza por 6, 600000000");
   Escribe_Si_Telefono(600000000);

   -- Caso 4: Teléfono móvil que empieza por 7
   Put("Caso 4: Telefono movil que empieza por 7, 756789076");
   Escribe_Si_Telefono(756789076);

   -- Caso 5: Número de 9 cifras que no es un teléfono
   Put("Caso 5: Numero de 9 cifras que no es teléfono, 123456789");
   Escribe_Si_Telefono(123456789);

   Put_Line("Fin de las pruebas."); New_Line;

END Probando_Es_Telefono;


