USE atividade_12;

SELECT *FROM ATOR
WHERE sexo = 'f';

SELECT nomeart, nacionalidade, sexo FROM ATOR;

SELECT nomeart, indicacoesoscar FROM ATOR
WHERE indicacoesoscar >= 1;

SELECT codf FROM PERSONAGEM
WHERE cache <= 3000;

SELECT personagem FROM PERSONAGEM P, ATOR A
WHERE P.coda = A.coda AND A.nomeart = 'DemiMoore';

SELECT F.nome FROM FILME F, PERSONAGEM P, ATOR A
WHERE F.codf = P.codf AND P.coda = A.coda AND A.nomeart = 'DemiMoore';

SELECT nomeart FROM ATOR
WHERE sexo = 'f' AND nomereal = 'Jessica';

SELECT nomeart FROM ATOR
WHERE idade >= 30 AND idade <= 40;

SELECT nomereal FROM ATOR
WHERE oscar + 2 = indicacoesoscar;

SELECT nomereal FROM ATOR
ORDER BY nomereal;

SELECT nomereal, idade FROM ATOR
WHERE sexo = 'f'
ORDER BY idade DESC, nomereal;

SELECT distinct A.nomeart, A.nacionalidade FROM FILME F, PERSONAGEM P, ATOR A
WHERE F.codf = P.codf AND P.coda = A.coda;