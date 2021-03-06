WITH Ada.Text_Io, Ada.Integer_Text_Io, ada.Float_Text_IO;
USE Ada.Text_Io, Ada.Integer_Text_Io, ada.Float_Text_IO;

PROCEDURE Prueba_Media_Matriz IS

   TYPE T_Matriz IS ARRAY (1 ..5, 1..3) OF Integer;
   ----------------------------------------------------
   ----------------------------------------------------
   FUNCTION  Media_Matriz (M:T_Matriz) RETURN FLOAT IS
      -- Pre:
      -- Post: Devuelve la media de la matriz.

      Media: Float:=0.0; Suma:Integer:=0;
   BEGIN
      FOR I IN 1..5 LOOP
         FOR K IN 1..3 LOOP
            Suma:=M(I,K)+Suma;
         END LOOP;
      END LOOP;
      Media:= Float(Suma)/15.0;
      RETURN Media;

   END Media_Matriz;
   ----------------------------------------------------
   ----------------------------------------------------
   PROCEDURE Escribir_Matriz (M:T_Matriz) IS
      BEGIN
      FOR J IN 1..5 LOOP
         FOR H IN 1..3 LOOP
         put( M(J,H),4);
         END LOOP;
         New_Line;
      END LOOP;
   END Escribir_Matriz;

   ----------------------------------------------------
   ----------------------------------------------------
M  : T_Matriz; F:Float;
BEGIN

   M:= ((1,1,1),(1,1,1),(1,1,1),(1,1,1),(1,1,1));
   Put_Line("CASO 1: Matriz A");
   Escribir_Matriz(M); New_Line;
   F:= Media_Matriz(M);
   Put("La media es: ");
   Put(F,1,2,0);
   New_Line;
   New_Line;
   ----------------------------------------------------
   ----------------------------------------------------
   ----------------------------------------------------
   M:= ((1,4,4),(6,8,1),(0,7,1),(42,2,1),(1,6,3));
   Put_Line("CASO 2: Matriz B");
   Escribir_Matriz(M); New_Line;
   F:= Media_Matriz(M);
   Put("La media es: ");
   Put(F,1,2,0);
   New_Line;
   New_Line;
   ----------------------------------------------------
   ----------------------------------------------------
   ----------------------------------------------------

   M:= ((56,56,14),(1,54,1),(45,87,1),(9,5,1),(2,11,1));
   Put_Line("CASO 3: Matriz C");
   Escribir_Matriz(M); New_Line;
   F:= Media_Matriz(M);
   Put("La media es: ");
   Put(F,1,2,0);
   New_Line;
   New_Line;



  Put_Line("Fin de las pruebas");

END Prueba_Media_Matriz;
