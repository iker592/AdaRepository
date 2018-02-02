
--  Ejercicio 12 del Tema 3  (Función: Operacion)

FUNCTION Operacion(N1, N2:Integer) RETURN Integer IS
BEGIN
   IF N1>N2 THEN RETURN N1*N2; ELSE RETURN N1+N2; END IF;
END Operacion;


