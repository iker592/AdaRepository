--Ejercicio 1 (laboratorio 1)
--Dado un n�mero entero positivo N de 9 cifras, indica si corresponde a un n�mero
--de tel�fono fijo (si la primera cifra es un 9, indicar� �Telefono Fijo�) � a un n�mero
--de tel�fono m�vil (si la primera cifra es un 6, indicar� �Telefono Movil�) o no
--corresponde a un tel�fono (indicar� �No es Telefono�).



WITH Ada.Integer_Text_Io;
USE Ada.Integer_Text_Io;
WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE Telefono IS
 -- Entrada: N (EE)
 -- Pre: -
 -- Salida: 1 String (SE)
 -- Post: 1� cifra 9 es tlf fijo, 1� cifra es 6 tlf movil, ninguna no es tlf

   N:Integer;
BEGIN
   Get(N);

   IF N>=600000000 AND N<=699999999 THEN
      Put ("Telefono movil");

   ELSIF N>=900000000 AND N<=999999999 THEN
      Put ("Telefono fijo");

   ELSE Put("No es telefono");
   END IF;

END Telefono;

-- Casos de prueba:
-- N = 600000000 --> Put ("Telefono movil")
-- N = 699999999 --> Put ("Telefono movil")
-- N = 999999999 --> Put ("Telefono fijo")
-- N = 900000000 --> Put ("Telefono fijo")
-- N = 899999999 --> Put ("No es telefono")
-- N = 000000000 --> Put ("No es telefono")
