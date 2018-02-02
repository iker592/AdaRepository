FUNCTION Es_telefono (N:IN Integer) RETURN boolean IS
   Num:Integer;Estlf:Boolean;
-- pre: --
-- post: será cierto sii (999999999>=Num >= 600000000) y Num empieza por 9, 7 o 6.
BEGIN
   num:=N;
   IF num>=600000000 and num<=999999999 THEN
      num:=num/10**8;

      IF num= 6 or num=7 or num=9 then estlf:=true; END IF;
   END IF;
   RETURN Estlf;

   --¿OTRA FORMA? : RETURN num= 6 or num= 7 or num=9 Estlf;
END Es_telefono;
