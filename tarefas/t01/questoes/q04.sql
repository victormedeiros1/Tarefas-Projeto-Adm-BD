SELECT F.nome, F.salario, D.sigla FROM funcionario F JOIN departamento D ON F.codDepto = D.codigo WHERE F.codigo NOT IN (
SELECT codgerente FROM departamento WHERE codgerente IS NOT NULL) 
ORDER BY f.codDepto;