with Listas;
use Listas;

with Ada.Text_IO;
use Ada.Text_IO;

procedure prueba_eliminar_ultimo is
   L : A_Nodo;
BEGIN
   Put_Line("=> CASO1:  ");
   Put_Line("Lista con un elemento");
   Cargar_F("l1.txt", L);
   Escribir(L);
   New_Line;
   New_Line;
   Eliminar_ultimo(L);
   Escribir(L);
   New_Line;
   New_Line;


   Put_Line("=> CASO2:  ");
   Put_Line("Lista con varios elementos");
   Cargar_F("l3.txt", L);
   Escribir(L);
   New_Line;
   New_Line;
   Eliminar_ultimo(L);
   Escribir(L);
   New_Line;
   New_Line;

end prueba_eliminar_ultimo;



