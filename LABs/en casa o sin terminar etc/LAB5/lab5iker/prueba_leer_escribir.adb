WITH Listas;
use Listas;

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, ada.Integer_Text_IO;

PROCEDURE Prueba_leer_escribir IS

   L: a_nodo;
begin
   put_line("CASO 1: Leer-escribir lista vacia");
   Cargar_F("l0.txt", L); -- l0 es un fichero vacío
   Escribir(L);
   New_Line;New_Line;

   put_line("CASO 2: Leer-escribir de un numero");
   Cargar_F("l1.txt", L); -- l1 sólo tiene el numero 6
   Escribir(L);
   New_Line;New_Line;

   put_line("CASO 3: Leer-escribir en lista de varios numeros");
   Cargar_F("l3.txt", L); -- l3 tiene varios numeros
   Escribir(L);
   New_Line;New_Line;

   put_line("CASO 4: Leer-escribir secuencia de numeros desde teclado sin centinela");
   Cargar(L);
   Escribir(L);
   new_line;new_line;

END Prueba_leer_escribir;



