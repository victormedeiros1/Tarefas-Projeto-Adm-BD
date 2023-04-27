SELECT F.nome 
FROM funcionario F JOIN departamento D ON F.codDepto = D.codigo 
WHERE F.salario > (
  SELECT AVG(F2.salario) FROM funcionario F2 WHERE F2.codDepto = 2
)