CREATE OR REPLACE FUNCTION funcionariosIdadeAcimaDaMediaDoDepto()
RETURNS TABLE (codigo INTEGER, nome CHARACTER VARYING) LANGUAGE plpgsql
AS
$$
BEGIN
	RETURN QUERY SELECT funcionario.codigo, funcionario.nome FROM funcionario WHERE
	idade_funcionario(funcionario.codigo) > media_idade_departamento(funcionario.depto);
END;
$$;