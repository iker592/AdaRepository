--Ejercicio 3 LABORATORIO 2
--3. Haciendo uso de la función Es_Telefono, implementa un programa Posicion_Primer_Tfn
--que dada (desde teclado) una secuencia de números positivos terminada en 0, calcule la
--posición del primer elemento de la secuencia que es un número de teléfono. Si no hay
--ningún número de teléfono devolverá 0.

WITH Es_Telefono;
WITH Ada.Text_IO, Ada.Integer_Text_IO;USE Ada.Text_IO, Ada.Integer_Text_IO;

PROCEDURE Posicion_Primer_Tfn IS
--Entrada: 1 secuencia de enteros (EE),
--Pre: centinela 0
--Salida: 1 entero(SE)
--Post: devuelve la posicion del primer numero que sea un telefono si no hay telefonos devuelve 0
   Cnt,Posicion:Integer:=0; S,Telefono:Integer; HAY:Boolean:=False;
   BEGIN
      GET (S);
      Telefono:=S;
      WHILE S/=0 AND NOT HAY LOOP
         Cnt:=Cnt+1;
         IF Es_Telefono (Telefono) THEN HAY:=True; Posicion:=cnt; END IF;
         GET (S);
         Telefono:=S;
      END LOOP;

      IF Cnt>0 AND Es_Telefono (Telefono) THEN
      Put("La posicion del primer telefono es: ") ; Put (Posicion,0); END IF;

      IF Cnt=0 THEN Put("No hay telefonos"); END IF;

END Posicion_Primer_Tfn;
