--2. Haciendo uso de las funciones Es_Telefono y Digito_i, implementa un programa
--Cuantos_Tfn que dada (desde teclado) una secuencia de números positivos terminada en 0
--(éste es el centinela), calcule cuántos números no corresponden a teléfonos, cuántos a un
--teléfono fijo (es un teléfono y empieza por 9) y cuántos a un teléfono móvil (es un teléfono y
--empieza por 6 o 7).

WITH Es_Telefono;
WITH Digito_I;

WITH Ada.Text_Io, Ada.Integer_Text_Io; USE Ada.Text_Io, Ada.Integer_Text_Io;

PROCEDURE Cuantos_Tfn IS
--Entrada: 1 entero (EE),
--Pre: --
--Salida: 1 entero (SE)
--Post: devuelve si es telefono movil o fijo o nada y cuantos de cada
S,Telefono:Integer; Cnt_Mvl, Cnt_fijo, Cnt_Nada:Integer:=0;

PROCEDURE Escribe_si_Telefono_mvl_ofijo (N : Natural) IS

    BEGIN
         Put (" --->");
         IF Es_Telefono(N)THEN
             IF Digito_I(N, 1)= 6 OR  Digito_I(N, 1)= 7 THEN
                Put(" Es telefono movil "); Cnt_Mvl:=Cnt_Mvl+1;
             ELSIF Digito_I(N, 1)= 9 THEN Put(" Es telefono fijo ");Cnt_fijo:=Cnt_fijo+1; END IF;
         ELSE Put(" No es telefono "); Cnt_nada:=Cnt_nada+1 ; END IF;
         New_Line(2);
    END Escribe_si_Telefono_mvl_ofijo;

 BEGIN
    GET (S);
    WHILE S/=0 LOOP
       Telefono:=S;
       Escribe_Si_Telefono_Mvl_Ofijo (Telefono);
       GET (S);
    END LOOP;
   Put("Total de tlfs moviles introducidos: "); Put(Cnt_Mvl,0);New_Line;
   Put("Total de tlfs fijos introducidos: "); Put(Cnt_Fijo,0);New_Line;
   Put("Total no correspondientes a tlfs: "); put(cnt_Nada,0);New_Line;
END Cuantos_Tfn;
