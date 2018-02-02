WITH Ada.Text_IO, Ada.Integer_Text_IO;
USE Ada.Text_IO, Ada.Integer_Text_IO;

PACKAGE BODY Listas IS

   PROCEDURE Cargar (
         L :    OUT A_Nodo) IS
   BEGIN
      L:= NULL;
      WHILE NOT End_Of_File LOOP
         L:= NEW T_Nodo'(0,L);
         Get(L.Valor);
      END LOOP;
   END Cargar;

   PROCEDURE Cargar_F (
         Nom_Fich :        String;
         L        :    OUT A_Nodo) IS
      F    : File_Type;
      Auxi : A_Nodo;
   BEGIN
      Open(F, In_File, Nom_Fich);
      IF NOT End_Of_File(F) THEN
         L:= NEW T_Nodo;
         Get(F, L.Valor);
         Auxi:= L;
      ELSE
         L:= NULL;
      END IF;
      WHILE NOT End_Of_File(F)LOOP
         Auxi.Sig:= NEW T_Nodo;
         Auxi:= Auxi.Sig;
         Get(F, Auxi.Valor);
      END LOOP;
      Close(F);
   END Cargar_F;


   PROCEDURE Escribir (
         L : A_Nodo) IS
      Auxi : A_Nodo := L;
   BEGIN
      Put("La lista (");
      WHILE Auxi/= NULL LOOP
         Put(Auxi.Valor, 0);
         Put(' ');
         Auxi:= Auxi.Sig;
      END LOOP;
      Put_Line(")");
   END Escribir;

   -------------------------------   LABORATORIO 5 -----------------------------------
   -- EJERCICIO 1 (obligatorio) -------------------------------------------------------------------
   PROCEDURE Insertar_Ordenado (
         L : IN OUT A_Nodo;
         E :        Integer) IS
      Ant,
      Act : A_Nodo := L;
   BEGIN
      WHILE Act /= NULL AND THEN Act.Valor < E LOOP
         Ant := Act;
         Act := Act.Sig;
      END LOOP;         -- Un numero de la lista es mayor que E y ha salido del bucle
      IF L = NULL THEN  --LISTA ESTA VACIA
         L:= NEW T_Nodo'(E,NULL);
      ELSIF Ant = Act THEN -- L solo tiene un elemento
         L:=NEW T_Nodo'(E,L);
      ELSE
         Ant.Sig:=NEW T_Nodo'(E,Act); -- Asignas despues del ultimo valor <E Un nuevo nodo con val E y apunta act
      END IF;
   END Insertar_Ordenado;


   -- EJERCICIO 2 (obligatorio) ------------------------------------------------------------------------
   PROCEDURE Cargar_Ordenado (
         Nom_Fich :        String;
         L        :    OUT A_Nodo) IS
      F : File_Type;
      N : Integer;
   BEGIN
      L:=NULL;
      Open(F, In_File, Nom_Fich);
      WHILE NOT End_Of_File(F)LOOP
         GET(F,N);   --coges el valor del fitxero
         Insertar_Ordenado(L,N); -- Lo insertas ordenado en L
      END LOOP;
      Close(F);
   END Cargar_Ordenado;

   -- EJERCICIO 3 (obligatorio) ------------------------------------------------------------------------
   PROCEDURE Eliminar_Ultimo (
         L : IN OUT A_Nodo) IS
      Ant,
      Act : A_Nodo := L;
   BEGIN
      WHILE Act.Sig /= NULL LOOP
         Ant := Act;
         Act := Act.Sig;
      END LOOP;
      IF  L.sig = NULL THEN  -- tambien vale Act.Sig=null?
         L:=NULL;
      ELSE
         Ant.Sig:=NULL;
      END IF;
   END Eliminar_Ultimo;


   --   -- EJERCICIO (OPTATIVO) ------------------------------------------------------------------------
   --   procedure Interseccion (
   --         L1,
   --         L2 :        A_Nodo;
   --         L  :    out A_Nodo) is
   --   *** AQUI LA IMPLEMENTACIÓN DE Interseccion

END Listas;



