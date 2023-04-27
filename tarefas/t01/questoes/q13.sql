-- TERMINAR DEPOIS, AINDA COM DUVIDAS

SELECT
  P.nome AS projeto,
  P.dataInicio AS inicioProjeto,
  P.dataFim AS fimProjeto,
  A.descricao AS atividade,
  A.dataInicio AS inicioAtividade,
  A.dataFim AS fimAtividade
FROM


-- INCOMPLETO


WHERE
  A.dataInicio < P.dataInicio
  OR A.dataFim > P.dataFim;

-- TERMINAR DEPOIS, AINDA COM DUVIDAS