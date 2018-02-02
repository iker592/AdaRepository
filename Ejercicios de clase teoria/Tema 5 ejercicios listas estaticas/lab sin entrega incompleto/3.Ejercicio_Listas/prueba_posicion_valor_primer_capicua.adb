WITH Ada.Text_Io, Ada.Integer_Text_Io;
USE Ada.Text_Io, Ada.Integer_Text_Io;
WITH Es_Capicua;

PROCEDURE Prueba_Posicion_Valor_Primer_Capicua IS

   Max: constant Positive := 25;
   type t_Positivos is array (1..Max) of Positive;
   type T_Lista_Positivos is record
         Lista: T_Positivos;
         Cont       : Natural range 0..Max;
   END RECORD;


   PROCEDURE Posicion_Valor_Primer_Capicua (
         L   : IN     T_Lista_Positivos;
         Pos,
         Val :    OUT Integer) IS
      -- Pre: Todos los elementos de L son mayores que 0
      -- Post: Pos = posición del primer elemento capicúa de L. Val= es el valor del primer
      --    capicúa de L. Si no hay capicúas, Pos=0 y Val=0.

   BEGIN
            --#####  COMPLETAR   ALGORITMO  #####

   END Posicion_Valor_Primer_Capicua;

   PROCEDURE Escribir(L: T_Lista_Positivos) IS
      -- salida: secuencia de numeros S(SE)
      -- post: los números de S son los elementos de L
   BEGIN
      put('(');
      FOR I IN 1.. L.Cont LOOP
         Put(L.Lista(I), 6);
      END LOOP;
      Put_Line(")");
   END Escribir;

   L   : T_Lista_Positivos;
   Pos,
   Val : Integer;
BEGIN

   L.Lista(1..10):= (505, 111, 202, 898, 343, 45654, 676, 6776, 99, 1001);
   L.Cont:= 10;
   Put_Line("CASO 1: Primer Capicua al principio");
   Put("L = ");
   Escribir(L);
   Posicion_Valor_Primer_Capicua (L,Pos,Val);
   Put(" ---> ");
   Put("El primer capicua esta en la posicion ");
   Put(Pos,0);
   Put(" y es el ");
   Put(Val,0);
   New_Line;
   New_Line;

   L.Lista(1..10):= (54, 187, 256, 89, 343, 45654, 676, 6776, 98, 1001);
   L.Cont:= 10;
   Put_Line("CASO 2: Primer capicua en posicion intermedia");
   Put("L = ");
   Escribir(L);
   Posicion_Valor_Primer_Capicua (L,Pos,Val);
   Put(" ---> ");
   Put("El primer capicua esta en la posicion ");
   Put(Pos,0);
   Put("  y es el ");
   Put(Val,0);
   New_Line;
   New_Line;

   L.Lista(1..10):= (54, 187, 256, 89, 3430, 45684, 675, 6770, 98, 1001);
   Put_Line("CASO 3: El unico capicua esta en la ultima posicion");
   Put("L = ");
   Escribir(L);
   Posicion_Valor_Primer_Capicua (L,Pos,Val);
   Put(" ---> ");
   Put(" El primer capicua esta en la posicion ");
   Put(Pos,0);
   Put(" y es el ");
   Put(Val,0);
   New_Line;
   New_Line;

   L.Lista(1..10):= (54, 187, 256, 89, 3430, 45684, 675, 6770, 98, 1008);
   Put_Line("CASO 4: No hay ningun capicua");
   Put("L = ");
   Escribir(L);
   Posicion_Valor_Primer_Capicua (L,Pos,Val);
   Put(" ---> ");
   Put(" No hay capicuas ");
   Put(Pos);
   Put("  ");
   Put(Val);
   New_Line;
   New_Line;

   L.Cont:=0;
   Put_Line("CASO 5: Lista Vacia");
   Put("L = ");
   Escribir(L);
   Posicion_Valor_Primer_Capicua (L,Pos,Val);
   Put(" ---> ");
   Put(" No hay capicuas ");
   Put(Pos);
   Put("  ");
   Put(Val);
   New_Line;
   New_Line;

   Put_Line("Fin de las pruebas");

END Prueba_Posicion_Valor_Primer_Capicua;



