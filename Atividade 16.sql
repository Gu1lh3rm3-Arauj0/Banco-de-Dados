USE atividade_15;

SELECT e.nome
FROM especialidade e
INNER JOIN medicoespecialidade me ON e.cod = me.especialidade_cod
INNER JOIN medico m ON m.cod = me.medico_cod
WHERE m.nome = 'Paulo';

SELECT c.data
FROM consulta c
JOIN medico m ON c.medico_cod = m.cod
WHERE m.nome = 'Arthur';

SELECT m.nome, c.nome, c.endereco
FROM medico m
INNER JOIN medicoclinica mc ON m.cod = mc.medico_cod
INNER JOIN clinica c ON c.cod = mc.clinica_cod
INNER JOIN consulta co ON co.clinica_cod = c.cod
INNER JOIN medicoespecialidade me ON m.cod = me.medico_cod
INNER JOIN especialidade e ON e.cod = me.especialidade_cod
WHERE e.nome = 'CLINICO GERAL';

SELECT c.nome, c.endereco 
FROM clinica c
INNER JOIN consulta co ON co.clinica_cod = c.cod
WHERE co.data = '2010-03-30';

SELECT m.nome
FROM medico m
INNER JOIN medicoclinica mc ON m.cod = mc.medico_cod
INNER JOIN clinica c ON c.cod = mc.clinica_cod
WHERE c.nome = 'clinica bem estar';

SELECT c.nome, c.endereco
FROM clinica c
INNER JOIN medicoclinica mc ON c.cod = mc.clinica_cod
INNER JOIN medico m ON m.cod = mc.medico_cod
WHERE m.nome = 'Andre';

iNSERT iNTO Clinica VALUES (11, 'centro de ombro', 'Avenida1');
iNSERT iNTO Clinica VALUES (12, 'clinica do Guilherme', 'Avenida2');

iNSERT iNTO Medico VALUES  (11, 'Lorezno', '8888-8888');
iNSERT iNTO Medico VALUES (12, 'Erme', '1313-1313');

SELECT c.nome, e.nome
FROM clinica c
LEFT JOIN especialidadeclinica ec ON c.cod = ec.clinica_cod
LEFT JOIN especialidade e ON e.cod = ec.especialidade_cod
ORDER BY c.nome, e.nome;

SELECT m.nome, co.data, co.hora
FROM medico m
LEFT JOIN consulta co ON m.cod = co.medico_cod;

SELECT m.nome, COUNT(co.medico_cod)
FROM medico m
INNER JOIN consulta co ON m.cod = co.medico_cod
GROUP BY m.nome;

SELECT m.nome, COUNT(co.medico_cod)
FROM medico m
LEFT JOIN consulta co ON m.cod = co.medico_cod
GROUP BY m.nome;

SELECT c.nome
FROM clinica c
WHERE c.cod IN (SELECT ec.clinica_cod
FROM especialidadeclinica ec
LEFT JOIN especialidade e ON e.cod = ec.especialidade_cod
WHERE e.nome IS NOT NULL);

SELECT m.nome
FROM medico m
WHERE m.cod NOT IN (SELECT co.medico_cod
FROM consulta co);

SELECT m.nome
FROM medico m
WHERE m.cod IN (SELECT co.medico_cod
FROM consulta co
LEFT JOIN clinica c ON c.cod = co.clinica_cod
WHERE c.nome = 'ortocentro');

CREATE TABLE Folha_Pagto ( medico_cod int, consulta_cod int, valor float,
primary key(medico_cod, consulta_cod),
foreign key (medico_cod) references Medico(cod),
foreign key (consulta_cod) references Consulta(cod));

INSERT INTO Folha_Pagto VALUES (1,1,100), (1,2,150),(2,3,100), (2, 4, 150), (3,5,50);

SELECT m.nome
FROM medico m
LEFT JOIN Folha_Pagto fp ON m.cod = fp.medico_cod
WHERE fp.valor >= (SELECT AVG(valor) FROM Folha_Pagto);

SELECT m.nome
FROM medico m
WHERE m.cod NOT IN (SELECT fp.medico_cod
FROM Folha_Pagto fp
LEFT JOIN medico m ON m.cod = fp.medico_cod);

SELECT m.nome, AVG(fp.valor) AS media_salario
FROM medico m
LEFT JOIN Folha_Pagto fp ON m.cod = fp.medico_cod
GROUP BY m.nome
ORDER BY m.nome;