WITH escribir_vector_sub;
WITH Ada.Text_IO, Ada.Integer_Text_IO;USE Ada.Text_IO, Ada.Integer_Text_IO;

PROCEDURE Escribir_Vector IS
    TYPE T_Vector IS ARRAY (1..10) OF Integer;
  A:t_vector;
BEGIN
   A:= (5,4,3,4,5,6,9,8,7,1);
   Escribir_Vector_sub(A);

END Escribir_Vector ;

