-- CRIANDO A VIEW
CREATE VIEW func_depto AS
SELECT count(F.codigo) AS qtd, F.codDepto
FROM funcionario F GROUP BY F.codDepto;

-- FAZENDO SELECT
SELECT 
D.descricao AS departamento, 
G.nome AS gerente, 
FD.qtd AS funcionarios
FROM func_depto FD 
LEFT JOIN departamento D 
ON d.codigo=FD.codDepto
LEFT JOIN funcionario G 
ON D.codGerente = G.codigo;