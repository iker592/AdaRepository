WITH Ada.Text_IO, Ada.Integer_Text_IO;USE Ada.Text_IO, Ada.Integer_Text_IO;

PROCEDURE Escribir IS
   max: constant:=10;
   N:Natural range 0..max:=10;
   TYPE T_Vector IS ARRAY(1..N)OF INTEGER;

PROCEDURE Escribir_Vector_sub (V: IN T_Vector) IS      --para hacer "put (v)"

BEGIN
   FOR I IN 1..10 LOOP
      Put (V(I),2);            --no puedes decirle put(v)
   END LOOP;

END Escribir_Vector_sub;

V:T_Vector;

BEGIN
   V:= (1,2,3,4,5,6,7,8,9,10);

Escribir_Vector_Sub(V);
END Escribir;
