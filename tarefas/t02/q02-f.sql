CREATE OR REPLACE FUNCTION calcularDiasDeAtrasoDoProjeto(codigo_proj INT)
RETURN INT LANGUAGE plpgsql AS
$$
DECLARE dias INTEGER;

BEGIN
	SELECT datafim - DATE(CURRENT_DATE AT TIME ZONE 'America/Fortaleza')
	INTO dias FROM projeto WHERE codigo = codigo_proj;
	
	RETURN dias;
END;
$$;