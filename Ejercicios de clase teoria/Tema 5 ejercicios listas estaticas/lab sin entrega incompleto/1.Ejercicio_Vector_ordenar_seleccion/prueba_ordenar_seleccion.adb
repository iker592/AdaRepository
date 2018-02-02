WITH Ada.Text_Io, Ada.Integer_Text_Io;
USE Ada.Text_Io, Ada.Integer_Text_Io;

PROCEDURE Prueba_Ordenar_Seleccion IS
   Type t_Vector is array (1..10) of integer;

FUNCTION Pos_Max_hasta (V : T_Vector; I : Natural) RETURN Integer IS
   --Pre : I Es Una Posición De V
   --Post : Devuelve La Posición Del Máximo Elemento En V (V'first..I)
   Pos_Max: Natural:= v'first;--
BEGIN
   FOR J IN V'First..I LOOP
      IF V(J)>V(Pos_Max) THEN Pos_Max:= J; END IF;
   END LOOP;
   RETURN Pos_Max;
END Pos_Max_hasta;


PROCEDURE Ordenar_Seleccion (V : IN OUT T_Vector) IS
   K   : Natural;
   Aux : Integer;

BEGIN
   FOR J IN REVERSE V'first+1..V'Last LOOP
      K:= Pos_Max_hasta (V,J);
      --Llamada A Pos_Max_hasta
      Aux:= V(J);
      V(J):=V(K);
      V(K):= Aux; -- IntercambiAr V(J) Y V(K)
   END LOOP;

END Ordenar_Seleccion;


   PROCEDURE Escribir (V : T_Vector) IS
      -- salida: secuencia de 10 numeros S(SE)
      -- post: los 10 números son los elementos de V
   BEGIN
      Put('(');
      FOR I IN V'RANGE LOOP
         Put(V(I), 6);
      END LOOP;
      Put_Line("  )");
   END Escribir;

   V: T_Vector;
BEGIN

   V:= (505, 111, 202, 898, 343, 45654, 676, 6776, 99, 1001);
   Put_Line("CASO 1: ");
   Put("V = ");
   Escribir(V);
   Ordenar_Seleccion (V);
   Put(" Ordenados---> ");
   Escribir(V);
   New_Line;
   New_Line;

END Prueba_Ordenar_Seleccion;
