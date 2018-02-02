with Listas;
use Listas;

with Ada.Text_IO;
use Ada.Text_IO;

procedure Prueba_Insertar_Ordenado is
   L : A_Nodo;
begin
   Put_Line("Lista vacia y voy insertando");
   Cargar_F("l0.txt", L); -- l0 es un fichero vacío
   Escribir(L);
   New_Line;
   New_Line;

   Insertar_Ordenado(L, 6);
   Put("=> CASO1: Inserto como unico el 6, ");
   Escribir(L);
   New_Line;
   New_Line;

   Insertar_Ordenado(L, 0);
   Put("=> CASO2: Inserto como primero el 0, ");
   Escribir(L);
   New_Line;
   New_Line;

   Insertar_Ordenado(L, 10);
   Put("=> CASO3: Inserto como ultimo el 10, ");
   Escribir(L);
   New_Line;
   New_Line;

   Insertar_Ordenado(L, 4);
   Put("=> CASO4: Inserto intermedio el 4, ");
   Escribir(L);
   Insertar_Ordenado(L, 5);
   Put("          Inserto intermedio el 5, ");
   Escribir(L);
   New_Line;
   New_Line;
end Prueba_Insertar_Ordenado;



