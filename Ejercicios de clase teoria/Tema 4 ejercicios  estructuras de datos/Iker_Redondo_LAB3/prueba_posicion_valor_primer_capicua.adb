WITH Ada.Text_Io, Ada.Integer_Text_Io;
USE Ada.Text_Io, Ada.Integer_Text_Io;
WITH Es_Capicua;

PROCEDURE Prueba_Posicion_Valor_Primer_Capicua IS

   TYPE T_Vector IS ARRAY (1 .. 10) OF Integer;

   PROCEDURE Posicion_Valor_Primer_Capicua (
         V   : IN     T_Vector;
         Pos,
         Val :    OUT Integer) IS
      -- Pre: Todos los elementos de V son mayores que 0
      -- Post: Pos = posición del primer elemento capicúa de V. Val= es el valor del primer
      --    capicúa de V. Si no hay capicúas, Pos=0 y Val=0.

      HAY:boolean:=False; I:integer:=1;
   BEGIN

        WHILE I<=V'last AND NOT HAY LOOP
            IF Es_Capicua(V(I)) THEN HAY:=TRUE; Pos:=I; Val:= V(I);
            ELSE I:=I+1; END IF;
        END LOOP;
        IF NOT HAY AND I>=V'last THEN Pos:=0; Val:=0; END IF;
   END Posicion_Valor_Primer_Capicua;

   PROCEDURE Escribir (
         V : T_Vector) IS
      -- salida: secuencia de 10 numeros S(SE)
      -- post: los 10 números son los elementos de V
   BEGIN
      Put('(');
      FOR I IN V'RANGE LOOP
         Put(V(I), 6);
      END LOOP;
      Put_Line("  )");
   END Escribir;

   V   : T_Vector;
   Pos,
   Val : Integer;
BEGIN

   V:= (505, 111, 202, 898, 343, 45654, 676, 6776, 99, 1001);
   Put_Line("CASO 1: Todos los elementos son capicuas");
   Put("V = ");
   Escribir(V);
   Posicion_Valor_Primer_Capicua (V,Pos,Val);
   Put(" ---> ");
   Put("El primer capicua esta en la posicion ");
   Put(Pos,0);
   Put(" y es el ");
   Put(Val,0);
   New_Line;
   New_Line;

   V:= (54, 187, 256, 89, 343, 45654, 676, 6776, 98, 1001);
   Put_Line("CASO 2: El primer capicua esta en una posicion intermedia");
   Put("V = ");
   Escribir(V);
   Posicion_Valor_Primer_Capicua (V,Pos,Val);
   Put(" ---> ");
   Put("El primer capicua esta en la posicion ");
   Put(Pos,0);
   Put("  y es el ");
   Put(Val,0);
   New_Line;
   New_Line;

   V:= (54, 187, 256, 89, 3430, 45684, 675, 6770, 98, 1001);
   Put_Line("CASO 3: El unico capicua esta en la ultima posicion");
   Put("V = ");
   Escribir(V);
   Posicion_Valor_Primer_Capicua (V,Pos,Val);
   Put(" ---> ");
   Put(" El primer capicua esta en la posicion ");
   Put(Pos,0);
   Put(" y es el ");
   Put(Val,0);
   New_Line;
   New_Line;

   V:= (54, 187, 256, 89, 3430, 45684, 675, 6770, 98, 1008);
   Put_Line("CASO 4: No hay ningun elemento capicua");
   Put("V = ");
   Escribir(V);
   Posicion_Valor_Primer_Capicua (V,Pos,Val);
   Put(" ---> ");
   Put(" No hay capicuas ");
   Put(Pos);
   Put("  ");
   Put(Val);
   New_Line;
   New_Line;
   Put_Line("Fin de las pruebas");

END Prueba_Posicion_Valor_Primer_Capicua;



