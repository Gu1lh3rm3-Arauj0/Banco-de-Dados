USE atividade_15;

SELECT m.nome, count(me.medico_cod) as conta FROM Medico m, MedicoClinica me
WHERE m.cod = me.medico_cod GROUP BY me.medico_cod
HAVING conta >1 ORDER BY m.nome;

SELECT m.nome, COUNT(Medico_cod) as qtd_especialidade FROM Medico m, MedicoEspecialidade medico
WHERE m.cod=me.medico_cod GROUP BY m.cod
HAVING COUNT(medico_cod)=2;

SELECT c.nome as nome FROM clinica c, Consulta co
WHERE co.clinica_cod = c.cod GROUP BY c.nome
HAVING AVG(co.hora)>20;

SELECT c.nome as nome_clinica, e.nome as nome_especialidade FROM Clinica c, Especialidade e, Consulta co
WHERE e.cod = co.especialidade_cod and co.clinica_cod = c.cod GROUP BY c.nome, e.nome
ORDER BY c.nome;

SELECT c.nome as nome_clinica, COUNT(co.especialidade_cod) as num_especialidade FROM Clinica c, Especialidade e, Consulta co
WHERE e.cod = co.especialidade_cod and co.clinica_cod = c.cod GROUP BY c.nome, e.nome;

SELECT c.nome as nome_clinica FROM Clinica c, Consulta co, Medico m
WHERE m.cod = co.medico_cod and co.clinica_cod = c.cod and m.nome = 'Andre' GROUP BY c.nome;

SELECT e.nome as nome_especialidade FROM Especialidade e,  Consulta co, medico m
WHERE  m.cod = co.medico_cod and co.especialidade_cod = e.cod and m.nome = 'Andre' GROUP BY e.nome;

SELECT m.nome, MAX(c.hora) FROM medico m, consulta co
Where m.cod = co.medico_cod and hora = (Select MAX(hora) from consulta);

SELECT m.nome FROM medico m, clinica c, medicoclinica mc
WHERE c.cod = mc.clinica_cod AND m.cod = mc.medico_cod AND m.cod NOT IN (select medico_cod FROM medicoclinica);




