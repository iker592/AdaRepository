FUNCTION contar_digitos (N:IN Integer) RETURN Integer IS
   Cnt1:Integer:=0;
   Num:Integer;
   -- post: devuelve el número de dígitos de Num
BEGIN
   num:=N;
   IF num >0 THEN

   WHILE num >0 LOOP
      num:=num/10;
      cnt1:=cnt1+1;
      END LOOP;

   ELSIF num < 0 THEN
      WHILE num <0 LOOP
      num:=num/10;
      cnt1:=cnt1+1;
      END LOOP;
   END IF;

   RETURN cnt1;
END contar_digitos;
