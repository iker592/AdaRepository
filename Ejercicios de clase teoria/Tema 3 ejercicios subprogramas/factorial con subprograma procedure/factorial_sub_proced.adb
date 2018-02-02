--Ejercicio TEMA 3 TEORIA SUBPROGRAMAS

--function: parametro de entrada y un parametro de salida
--procedure: parametro de entrada y mas de un parametro de salida


WITH Ada.Integer_Text_Io; USE Ada.Integer_Text_Io;
WITH Ada.Text_IO; USE Ada.Text_IO;

PROCEDURE Factorial_sub_proced (N: IN  Integer ; P: OUT integer; B: OUT boolean) IS --interfaz de subprograma (es procedure porque queremos devolver mas de un VALOR) (UN PP ES UN PROCEDURE SIN PARAMETRO)

 -- Entrada: -                  es N pero no hace falta ponerlo porque esta especificado en la interfaz
 -- Pre: N>0
 -- Salida: -                   es P pero ya hemos declarado que es entero en la interfaz asi que no hay que especificar
 -- Post: devuelve N!
 I: Integer;

BEGIN
   I:=1 ; -- NO HACE FALTA P:=1 ni declararlo porque esta en la expresion ;
   WHILE I<=N LOOP
      P:=P*I;
      I:= I+1;
   END loop ;
   B:=(N<10);
   -- NO HAY QUE PONER return P;

END factorial_sub_proced;


