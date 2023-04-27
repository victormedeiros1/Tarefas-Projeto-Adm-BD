SELECT P.nome AS nomeProjeto,
DP.descricao AS depProjeto,
F.nome AS nomeResponsavel,
DF.descricao AS depResponsavel
FROM projeto P
JOIN departamento DP ON p.codDepto = DP.codigo
JOIN funcionario F ON P.codResponsavel = F.codigo
JOIN departamento DF ON F.codDepto = DF.codigo
WHERE DP.codigo <> DF.codigo;