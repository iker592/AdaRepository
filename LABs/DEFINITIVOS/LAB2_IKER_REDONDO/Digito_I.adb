FUNCTION Digito_I (N, I:IN Integer) RETURN Integer IS
   Num,L:Integer;
-- pre: Num es un tel�fono, 1<=I<=9
-- post: devuelve el I-�simo d�gito del tel�fono Num
BEGIN
   Num:=N;
   Num:= Num / 10**(9-I); Num:= Num mod 10;
   RETURN Num;
END Digito_I ;

