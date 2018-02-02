with Listas;
use Listas;

with Ada.Text_IO;
use Ada.Text_IO;

procedure Prueba_Cargar_Ordenado is
   L : A_Nodo;
begin
   Put_Line("CASO 1: lista vacia");
   Cargar_F("l0.txt", L); -- l0 es un fichero vacío
   Put("        Sin ordenar,");
   Escribir(L);
   Cargar_Ordenado("l0.txt", L);
   Put("        Ordenado,   ");
   Escribir(L);
   New_Line;
   New_Line;

   Put_Line("CASO 2: Lista de un numero");
   Cargar_F("l1.txt", L); -- l1 sólo tiene el numero 6
   Put("        Sin ordenar,");
   Escribir(L);
   Cargar_Ordenado("l1.txt", L);
   Put("        Ordenado,   ");
   Escribir(L);
   New_Line;
   New_Line;

   Put_Line("CASO 3: Lista de varios numeros");
   Cargar_F("l3.txt", L); -- l3 tiene varios numeros
   Put("        Sin ordenar,");
   Escribir(L);
   Cargar_Ordenado("l3.txt", L);
   Put("        Ordenado,   ");
   Escribir(L);
   New_Line;
   New_Line;
end Prueba_Cargar_Ordenado;



