
package Listas is
   type A_Nodo is private;

   procedure Cargar (
         L :    out A_Nodo);
   -- entrada: secuencia de enteros, S (EE)
   -- pre: S no tiene centinela.
   -- post: L contine los enteros de la secuencia S en sentido contrario al de aparición.

   procedure Cargar_F (
         Nom_Fich :        String;
         L        :    out A_Nodo);
   -- entrada: secuencia de enteros, S (Fichero)
   -- pre: El Fichero existe y su nombre es Nom_Fich, S no tiene centinela.
   -- post: L contine todo los enteros de la secuencia S y en el mismo orden de aparición

   procedure Escribir (
         L : A_Nodo);
   -- salida: Secuencia de enteros, S (SE)
   -- post: Los elementos de S son todos los elementos de L


  -----------------------------   LABORATORIO 5 -----------------------------------
   -- EJERCICIO 1 (obligatorio) -------------------------------------------------------------------
   procedure Insertar_Ordenado (
         L : in out A_Nodo;
         E :        Integer);
   -- pre : L ordenada en orden creciente
   -- post: Se ha insertado E ordenadamente en L

   -- EJERCICIO 2 (obligatorio) ------------------------------------------------------------------------
   procedure Cargar_Ordenado (
         Nom_Fich :        String;
         L        :    out A_Nodo);
   -- entrada: secuencia de enteros, S (Fichero)
   -- pre: El Fichero existe y su nombre es Nom_Fich, S no tiene centinela.
   -- post: L contiene todo los enteros de la secuencia S en orden creciente

   -- EJERCICIO 3 (obligatorio) ------------------------------------------------------------------------
   procedure Eliminar_Ultimo (
         L : in out A_Nodo);
   -- pre : longitud(L)>=1
   -- post: Se elimina el  ultimo elemento de L

--   -- EJERCICIO (OPTATIVO) ------------------------------------------------------------------------
--   procedure Interseccion (
--         L1,
--         L2 :        A_Nodo;
--         L  :    out A_Nodo);
--   -- pre : L1 y L2 están ordenadas en orden creciente
--   -- post: L esta formada por los elementos que
--   --		  están a la vez en L1 y L2.

private
   type T_Nodo;
   type A_Nodo is access T_Nodo;
   type T_Nodo is
      record
         Valor : Integer;
         Sig   : A_Nodo;
      end record;
end Listas;



