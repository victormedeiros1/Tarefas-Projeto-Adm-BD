CREATE OR REPLACE FUNCTION calcularDiasAtrasoDaAtividade(codigo_ativ INT)
RETURNS INT LANGUAGE plpgsql AS
$$
DECLARE dias INTEGER

BEGIN
	SELECT datafim - DATE(CURRENT_DATE AT TIME ZONE 'America/Fortaleza')
	INTO dias FROM atividade WHERE codigo = codigo_ativ;
	
	RETURN dias;
END;
$$;