WITH Ada.Text_IO, Ada.Integer_Text_IO,ada.Float_Text_IO; USE Ada.Text_IO, Ada.Integer_Text_IO,ada.Float_Text_IO;
PROCEDURE Ppal IS 
   TYPE T_Vector IS ARRAY (1..10) OF Integer;
   TYPE T_Matriz IS ARRAY (1..5, 1..3) OF Integer; --Declaraciones de TYPES para los distintos ARRAYs y RECORDs
   TYPE T_Lista IS RECORD Nombres: String(1..4); Length: Natural RANGE 0..10; END RECORD;
-----------------------------------------------------------------------
-----------------------------------------------------------------------
   PROCEDURE SUBprocedimiento (V:IN T_Vector; M:T_Matriz; L: IN T_Lista; I: IN Integer; V2: IN OUT T_Vector) IS 
      Cnt: Positive:=1;
   BEGIN
      IF I=3 THEN
      PUT("VECTOR: ");             --ESCRIBIR VECTOR
      FOR J IN 1..10 LOOP
         PUT(V(J),3);
      END LOOP; New_Line;New_Line;
      PUT_Line("MATRIZ: ");        --ESCRIBIR MATRIZ
      FOR K IN 1..5 LOOP
         FOR H IN 1..3 LOOP
            PUT(M(K,H),5);
         END LOOP;New_Line;
      END LOOP;New_Line;New_Line;
      PUT("Lista: ");              --ESCRIBIR LISTA
      FOR P IN 1..4 LOOP
         PUT(L.Nombres(P));
      END LOOP;New_Line;New_Line;
      END IF;Put("VECTOR_2: ");
      FOR W IN REVERSE V2'First..V2'Last-1 LOOP Put(V2(W),2); IF V2(W+1)<V2(W) THEN Cnt:=Cnt+1; END IF; END LOOP;New_Line;PUT("Contador: ");Put(Cnt-1,2);New_Line;New_Line;     
   END SUBprocedimiento;
-----------------------------------------------------------------------
-----------------------------------------------------------------------   
   FUNCTION  SUBfuncion       (Num: IN Natural) RETURN Boolean IS 
      Aux: Natural;
   BEGIN 
      Aux:=Num+2;
      RETURN Aux=4;
   END SUBfuncion;
-----------------------------------------------------------------------
-----------------------------------------------------------------------
   V,V2:T_Vector; M:T_Matriz; L:T_Lista; Num: Natural RANGE 0..2; I: Integer; Real:Float; --Declaraciones ppal LOS TYPE SE PONEN ARRIBA!
BEGIN 
      I:=3; --Condicion para entrar en SUBprocedimiento
      Num:=2; --Variable de entrada para SUBfuncion
      V:= (1,2,3,4,5,6,7,8,9,10); --Valores para vector V
      V2:= (6,7,9,3,5,6,1,9,4,3); --Valores para vector V2
      M:=((1,2,3),(1,2,3),(1,2,3),(1,2,3),(1,2,3)); --Valores para Matriz M
      L.Nombres:=("iker"); --Cadena characters (string) lista estatica     
      L.Length:=1; --Definir la largura de la lista estatica
      SUBprocedimiento(V,M,L,I,V2); --LLAMADA SUBPROCEDIMIENTO (Es una Instrucción)
      PUT("Num=4? ---> ");                   
      PUT(Boolean'Image(SUBfuncion(Num))); --LLAMADA SUBFUNCION (Es una expresión)
      New_Line;New_Line; Real:=3.2E-2; PUT(Real,1,2);
END Ppal;
 

