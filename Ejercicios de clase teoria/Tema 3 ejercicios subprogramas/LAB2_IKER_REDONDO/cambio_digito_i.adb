
with ada.Integer_Text_IO;use ada.Integer_Text_IO;


PROCEDURE  Cambio_Digito_i  (Num: IN  OUT Integer; I,Val:Integer)IS
-- pre: Num es un teléfono, 1<=I <=9, 0<= Val <= 9
-- post: modifica el teléfono Num cambiando el I-ésimo dígito por Val

Pon,Dig:Integer;

BEGIN
   Dig:= (Num/10**(I-1)) mod 10 ; Put (dig);
   IF Val>Dig THEN Pon:= Val-Dig; Num:= Num + (Pon * 10**(I-1));
   ELSE Pon:= Dig-Val; Num:= Num - (Pon * 10**(I-1)); END IF;
END Cambio_Digito_i ;


