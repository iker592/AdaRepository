with Cambio_digito_i;
with ada.Integer_Text_IO, ada.Text_IO ;use ada.Integer_Text_IO, ada.Text_IO;

PROCEDURE Probando_cambio_I IS
   Num,I,Val:Integer;
-- pre: Num es un teléfono, 1<=I <=9, 0<= Val <= 9
-- post: modifica el teléfono Num cambiando el I-ésimo dígito por Val
BEGIN
   Put("Introducir Telefono :");Get(Num); New_Line;
   Put ("I-esimo digito a cambiar (de derecha a izquierda):");Get(I); New_Line;
   Put("Digito a introducir en I-esima posicion  :");Get(Val); New_Line;
   Cambio_digito_i(Num,I,Val);
   put(Num);
END Probando_cambio_I;