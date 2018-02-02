WITH Ada.Text_Io, Ada.Integer_Text_Io;
USE Ada.Text_Io, Ada.Integer_Text_Io;
WITH Es_Capicua;

PROCEDURE Prueba_Todos_Capicuas IS

   TYPE T_Vector IS ARRAY (1 .. 10) OF Integer;

   FUNCTION Son_Capicua (V:T_Vector) RETURN BOOLEAN IS
      -- Pre:
      -- Post: Devuelve si todos son capicuas o no.
   SON:BOOLEAN:=FALSE;
   BEGIN
        FOR I IN V'RANGE LOOP
         IF Es_Capicua(V(I)) THEN SON:=TRUE; END IF;
        END LOOP;
        RETURN SON;
   END Son_Capicua;

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
BEGIN

   V:= (505, 111, 202, 898, 343, 45654, 676, 6776, 99, 1001);
   Put_Line("CASO 1: Todos los elementos son capicuas");
   Put("V = ");
   Escribir(V);
   Put(" Todos capicuas? ---> ");
   Put(boolean'image(Son_capicua(V)));
   New_Line;
   New_Line;
   New_Line;

   V:= (505, 112, 204, 895, 348, 45954, 676, 679, 99, 1001);
   Put_Line("CASO 1: El capicua esta en la primera posicion y hay mas capicuas");
   Put("V = ");
   Escribir(V);
   Put(" Todos capicuas? ---> ");
   Put(boolean'image(Son_capicua(V)));
   New_Line;
   New_Line;
   New_Line;

   V:= (54, 187, 256, 89, 343, 45654, 676, 6776, 98, 1001);
   Put_Line("CASO 2: El primer capicua esta en una posicion intermedia");
   Put("V = ");
   Escribir(V);
   Put(" Todos capicuas? ---> ");
   Put(boolean'image(Son_capicua(V)));
   New_Line;
   New_Line;
   New_Line;

   V:= (54, 187, 256, 89, 3430, 45684, 675, 6770, 98, 1001);
   Put_Line("CASO 3: El unico capicua esta en la ultima posicion");
   Put("V = ");
   Escribir(V);
   Put(" Todos capicuas? ---> ");
   Put(boolean'image(Son_capicua(V)));
   New_Line;
   New_Line;
   New_Line;

   V:= (54, 187, 256, 89, 3430, 45684, 675, 6770, 98, 1008);
   Put_Line("CASO 4: No hay ningun elemento capicua");
   Put("V = ");
   Escribir(V);
   Put(" Todos capicuas? ---> ");
   Put(boolean'image(Son_capicua(V)));
   New_Line;

   Put_Line("Fin de las pruebas");

END Prueba_Todos_Capicuas;



