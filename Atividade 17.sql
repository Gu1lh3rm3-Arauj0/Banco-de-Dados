USE atividade_15;

create table empregado_dani(id integer auto_increment, nome varchar(20), salario float, primary key(id));

DROP PROCEDURE InserePessoas2;
DELIMITER $$
CREATE PROCEDURE InserePessoas2()
BEGIN
DECLARE conta INT;
DECLARE v1 CHAR(20);
DECLARE salario float;
SET conta = 1;
SET v1 = 'nome'; SET salario = 1000;
WHILE (conta <=10) DO
    INSERT INTO empregado_dani(nome, salario)
    VALUES(concat(v1,conta),salario*conta);
    SET conta=conta+1;
END WHILE;
END $$
DELIMITER ;
Call InserePessoas2();

SELECT * FROM empregado_dani;

DROP PROCEDURE qtd_empregados;
DELIMITER $$
CREATE PROCEDURE qtd_empregados(OUT quantidade INT)
BEGIN
SELECT count(*) INTO quantidade
From empregado_dani;
END $$
DELIMITER ;

CALL qtd_empregados(@QTD);
select @QTD;