CREATE OR REPLACE FUNCTION calcularPorcentagemDeAtividadesPorFuncionario(codigo_func INT, codigo_proj INT)
RETURNS DECIMAL LANGUAGE plpgsql AS
$$
DECLARE porcentagem DECIMAL;

BEGIN
	SELECT ROUND(atividades_func_proj(codigo_func, codigo_proj)::decimal/COUNT(ap.codatividade) * 100,2)
    INTO porcentagem FROM projeto p JOIN atividade_projeto ap ON ap.codprojeto = p.codigo WHERE p.codigo = codigo_proj GROUP BY p.codigo;
	
	RETURN porcentagem;
END;