FUNCTION Digito_I (N, I:IN Integer) RETURN Integer IS
   Num,L:Integer;
-- pre: Num es un teléfono, 1<=I<=9
-- post: devuelve el I-ésimo dígito del teléfono Num
BEGIN
   Num:=N;
   Num:= Num / 10**(9-I); Num:= Num mod 10;
   RETURN Num;
END Digito_I ;

