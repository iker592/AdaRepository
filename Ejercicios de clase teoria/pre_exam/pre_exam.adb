WITH Ada.Text_IO,Ada.Integer_Text_IO;USE Ada.Text_IO,Ada.Integer_Text_IO;
--Indica si el vector de prueba es par o no:

PROCEDURE PRE_EXAM IS
   maxNum: constant :=10;
   TYPE T_Numeros IS ARRAY (1..maxNum) OF INTEGER;
   TYPE T_LISTA IS RECORD Numeros: T_Numeros; Cont: Natural RANGE 0..MaxNum;END RECORD;
   TYPE T_MATRIZ IS ARRAY (1..3,1..3) OF Integer;
   TYPE T_VECTOR IS ARRAY (1..6) OF Integer;
   --PRE: Numeros del vector >0
   --POST: Devuelve un string indicando si es par o no
---------------------------------------------------------
   FUNCTION LISTA_PAR (L:T_LISTA) RETURN Boolean IS
   I:integer:=1;
   BEGIN
      WHILE I<=L.cont AND THEN L.Numeros(I) mod 2 =0 LOOP
         I:=I+1;
      END LOOP;

     RETURN I>L.cont;
   END LISTA_PAR;
---------------------------------------------------------
   PROCEDURE ESCRIBIR_LISTA (L: IN OUT T_LISTA) IS
   BEGIN
      FOR I IN 1..L.Cont LOOP
         Put(L.Numeros(I),2);
      END LOOP;
   END ESCRIBIR_LISTA;
---------------------------------------------------------
   PROCEDURE ESCRIBIR_MATRIZ (M: IN OUT T_MATRIZ) IS
   BEGIN
      FOR J IN 1..M'Last(1) LOOP
         FOR K IN 1..M'Last(2) LOOP
            Put(M(J,K),3);
         END LOOP;
         NEW_LINE;
      END LOOP;
      END ESCRIBIR_MATRIZ;
----------------------------------------------------------
   PROCEDURE ESCRIBIR_VECTOR (V: IN OUT T_VECTOR) IS
   BEGIN
      FOR H IN 1..V'Last LOOP
         Put(V(H),3);
      END LOOP;
   END ESCRIBIR_VECTOR;
----------------------------------------------------------
   PROCEDURE CAMBIAR_MATRIZ (M:IN OUT T_MATRIZ; M2: OUT T_MATRIZ) IS
   M_Aux:T_MATRIZ;
   BEGIN
      M2:=((4,5,6),(4,5,6),(4,5,6));
      FOR J IN 1..M'Last(1) LOOP
         FOR K IN 1..M'Last(2) LOOP
            M_Aux(J,K):=M(J,K);
            M(J,K):=M2(J,K);
            M2(J,K):=M_Aux(J,K);
         END LOOP;
      END LOOP;
   END CAMBIAR_MATRIZ;
---------------------------------------------------------------
   PROCEDURE LEER_LISTA (L: OUT T_Lista) IS
   N:Natural;
   BEGIN
      Get(N);
      L.Cont:=0;
      WHILE N/=0 LOOP
         L.Numeros(L.Cont+1):=N;
         L.Cont:=L.Cont+1;
         GET(N);
      END LOOP;
   END LEER_LISTA;
----------------------------------------------------------------
   L:T_LISTA; M,M2:T_MATRIZ; V:T_VECTOR;

BEGIN
   L.cont:=5;
   L.Numeros(1..10):=(3,2,2,2,2,2,2,2,3,2);
   M:=((1,2,3),(1,2,3),(1,2,3));
   V:=(1,2,3,4,5,6);
   IF LISTA_PAR(L) THEN Put_Line("ES_PAR"); ELSE Put_Line("NO ES PAR"); END IF;
   Put_Line(Boolean'Image(LISTA_PAR(L)));
   ESCRIBIR_LISTA(L); NEW_LINE;
   ESCRIBIR_MATRIZ(M); NEW_LINE;
   ESCRIBIR_VECTOR(V); NEW_LINE;
   CAMBIAR_MATRIZ(M,M2); NEW_LINE;
   ESCRIBIR_MATRIZ(M); NEW_LINE;
   ESCRIBIR_MATRIZ(M2); NEW_LINE;
   LEER_LISTA(L);NEW_LINE;
   ESCRIBIR_LISTA(L);

END PRE_EXAM;
