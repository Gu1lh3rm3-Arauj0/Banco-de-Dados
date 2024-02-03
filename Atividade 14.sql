USE atividade_12;

SELECT COUNT(*) FROM ATOR
WHERE sexo = 'f';

SELECT A.nomereal,  COUNT(P.CODA) FROM ATOR A, PERSONAGEM P
WHERE A.coda = P.coda GROUP BY A.nomereal;

SELECT A.nomereal,  MIN(F.ano) FROM ATOR A, PERSONAGEM P, FILME F
WHERE F.codf = P.codf AND P.coda = A.coda AND A.oscar = 0 GROUP BY A.nomereal;

SELECT nome, COUNT(P.codf) FROM PERSONAGEM P, FILME F
WHERE F.codf = P.codf GROUP BY F.nome;

SELECT ano, COUNT(codf) FROM FILME
GROUP BY ano;

SELECT A.nomereal,  COUNT(P.CODA) FROM ATOR A, PERSONAGEM P
WHERE A.coda = P.coda GROUP BY A.nomereal
HAVING COUNT(P.CODA) >= 2;