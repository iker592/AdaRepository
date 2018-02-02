FUNCTION Es_telefono (N:IN Integer) RETURN boolean IS
   Num:Integer;
-- pre: --
-- post: será cierto sii (999999999>=Num >= 600000000) y Num empieza por 9, 7 o 6.
BEGIN
   num:=N;
   IF num>=600000000 and num<=999999999 THEN
      num:=num/10**8;
   END IF;
   RETURN num=6 or num=7 or num=9;

END Es_telefono;
