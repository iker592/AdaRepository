WITH Ada.Text_IO, Ada.Integer_Text_IO;
USE Ada.Text_IO, Ada.Integer_Text_IO;
WITH Es_Capicua;

PROCEDURE Prueba_Contar_Capicuas IS

   Max: constant Positive := 25;
   type t_Positivos is array (1..Max) of Positive;
   type T_Lista_Positivos is record
         Lista: T_Positivos;
         Cont       : Natural range 0..Max;
   END RECORD;


   FUNCTION Contar_Capicuas (L: T_Lista_Positivos; N:Natural) RETURN Integer IS
   -- Pre: Todos los elementos de L son mayores que 0
   -- Post: Devuelve cuántos capicúas hay en L cuyo último dígito sea igual a N.

   BEGIN
            --#####  COMPLETAR   ALGORITMO  #####

   END Contar_Capicuas;

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

   L, LL: T_Lista_Positivos;
BEGIN
   L.Lista(1..10):= (55, 11, 22, 33, 343, 1456541, 676, 6776, 99, 1001);
   L.Cont:= 10;
   Put_Line("(A) Probamos primero con un lista de 10 elementos con todos capicuas");
   Put("L = "); Escribir(L); New_line;

   put("CASO 1: La cantidad de capicuas terminados en 1 en L es ");
   Put(Contar_Capicuas(L,1),0);
   New_Line; New_Line;

   Put("CASO 2: La cantidad de capicuas terminados en 5 en L es ");
   Put(Contar_Capicuas(L,5),0);
   New_Line; New_Line;

   Put("CASO 3: La cantidad de capicuas terminados en 7 en L es ");
   Put(Contar_Capicuas(L,7),0);
   New_Line; New_Line; New_Line;

   LL.Lista(1..2):= (10, 22);
   LL.Cont:= 2;
   Put_Line("(B) Probamos ahora con una lista de 2 elementos donde hay un capicua");
   Put("LL = "); Escribir(LL); New_line;

   Put("CASO 4: La cantidad de capicuas terminados en 1 en LL es ");
   Put(Contar_Capicuas(LL,1),0);
   New_Line; New_Line;

   Put("CASO 5: La cantidad de capicuas terminados en 2 en LL es ");
   Put(Contar_Capicuas(LL,2),0);
   New_Line; New_Line; New_Line;


   LL.Cont:= 0;
   Put_Line("(C) Probamos ahora con una lista vacia");
   Put("LL = "); Escribir(LL); New_line;

   Put("CASO 6: La cantidad de capicuas terminados en 8 en LL es ");
   Put(Contar_Capicuas(LL,8),0);
   New_Line; New_Line;

   Put_Line("Fin de las pruebas");

END Prueba_Contar_Capicuas;



