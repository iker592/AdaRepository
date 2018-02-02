WITH Ada.Text_IO, Ada.Integer_Text_IO,Ada.Float_Text_IO;
USE Ada.Text_IO, Ada.Integer_Text_IO,ada.Float_Text_IO;
PROCEDURE Ppal IS
   TYPE T_Vector IS ARRAY (1..10) OF Integer;
   TYPE T_Matriz IS ARRAY (1..5, 1..3) OF Integer; --Declaraciones de TYPEs para los distintos ARRAYs (vectores o matrices) y RECORDs (listas,estaticas en este caso)
   max: constant Integer :=10;   --Esto tiene que ir encima de los TYPEs en los que se use porque si no dice que esta "undefined"
   TYPE T_Nombres IS ARRAY (1..max) OF Character; --La palabra asignada tiene que tener la misma longitud (exacta) ejemplo--> "iker......"
   TYPE T_Lista IS RECORD Nombres: T_Nombres; Cont: Natural RANGE 0..Max; END RECORD;

-----------------------------------------------------------------------
-----------------------------------------------------------------------
   PROCEDURE SUBprocedimiento (V:IN T_Vector; M:T_Matriz; L: IN OUT T_Lista; I: IN Integer; V2: IN OUT T_Vector) IS
      Cnt: Positive:=1;
   BEGIN
      IF I=3 THEN
      PUT("VECTOR: ");             --ESCRIBIR VECTOR
      FOR J IN 1..10 LOOP
         PUT(V(J),3);   --el 3 es la separación de delante--> _5
      END LOOP; New_Line;New_Line;
      PUT_Line("MATRIZ: ");        --ESCRIBIR MATRIZ
      FOR K IN 1..5 LOOP
         FOR H IN 1..3 LOOP
            PUT(M(K,H),5);
         END LOOP;New_Line;
      END LOOP;New_Line;New_Line;
      PUT("Lista: ");              --ESCRIBIR LISTA
      L.cont:=2;  --modificas la longitud de la lista nuevamente y esta predomina de la del programa ppal
      FOR P IN 1..L.cont-1 LOOP   --importante poner hasta L.cont así la lista se modifica con el contador
            PUT(L.Nombres(P));
      END LOOP;New_Line;New_Line;
      END IF;
      Put("VECTOR_2: ");            --ESCRIBIR VECTOR_2
      FOR W IN REVERSE V2'First..V2'Last-4 LOOP
         V2:=(9,5,4,5,8,9,8,9,5,8);   --asigna nuevos valores al vector_2
         Put(V2(W),2);
         IF V2(W+1)<V2(W) THEN  --compara los nº de dentro del vector_2
            Cnt:=Cnt+1;
         END IF;
      END LOOP; New_Line;
      PUT("Contador: "); Put(Cnt-1,0); New_Line;New_Line;
   END SUBprocedimiento;
-----------------------------------------------------------------------
-----------------------------------------------------------------------
   FUNCTION  SUBfuncion       (Num: IN Natural) RETURN Boolean IS
      Aux: Natural;
   BEGIN
      Aux:=Num+2;
      RETURN Aux=4;   --devuelve el valor booleano de comparar si la variable Aux es 4
   END SUBfuncion;
-----------------------------------------------------------------------
-----------------------------------------------------------------------
   V,V2:T_Vector; M:T_Matriz; L:T_Lista; Num: Natural RANGE 0..2; I: Integer; Real:Float; --Declaraciones del prg ppal LOS TYPE SE PONEN ARRIBA!
   X:boolean:=True;
BEGIN

      I:=3; --Condicion para entrar en SUBprocedimiento
      --Num:=2; --Variable de entrada para SUBfuncion
      PUT("VALOR Num?"); GET(Num); --Pide valor para variable de entrada de subfuncion
      V:= (1,2,3,4,5,6,7,8,9,10); --Valores para vector V
      V2:= (6,7,9,3,5,6,1,9,4,3); --Valores para vector V2
      M:=((1,2,3),(1,2,3),(1,5,3),(1,2,3),(1,2,3)); --Valores para Matriz M
      L.Nombres:=("iker______"); --Cadena de characters (string) para lista estatica (tiene que tener 10 caracteres porque es la longitud que tiene definida el STRING)
      L.cont:=3; --Para definir la longitud de la lista estatica
      SUBprocedimiento(V,M,L,I,V2); --LLAMADA A SUBPROCEDIMIENTO (Es una Instrucción)
      PUT("Num=4? ---> ");
      PUT(Boolean'Image(SUBfuncion(Num))); --LLAMADA A SUBFUNCION (Es una expresión)
      X:=SUBfuncion(Num); New_Line; --asignar a la variable X el valor del resultado de la SUBfuncion al introducir el valor de Num
      PUT(boolean'image(X));
      New_Line;New_Line; Real:=3.256E-2; PUT(Real,5,3);   --El 5 como en los integer __4 y el 3 son los decimales a mostrar -->4.454
END Ppal;


