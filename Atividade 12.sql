#CREATE database atividade_12;
USE atividade_12;

CREATE TABLE ATOR(
	coda int,
    nomeart varchar(50),
    nomereal varchar(50),
    nacionalidade varchar(25),
    sexo varchar(15),
    idade int,
    indicacoesoscar int,
    oscar int,
    primary key(coda)
);

CREATE TABLE FILME (
	codf int,
    nome varchar(25),
    ano int4,
    orcamento float,
    tempo time,
    primary key (codf)
);

CREATE TABLE PERSONAGEM(
	coda int,
    codf int, 
    personagem varchar(25),
    cache float,
    PRIMARY KEY(coda, codf),
    FOREIGN KEY(coda) REFERENCES ATOR(coda),
    FOREIGN KEY(codf) REFERENCES FILME(codf)
);

INSERT INTO ATOR
VALUES (1, 'DemiMoore', 'MariadaSilva', 'USA', 'f', 32, 0, 0),
		(2, 'BradPitt', 'JoaoPaulo', 'USA', 'f', 28, 1, 0),
        (3, 'DustinHoffman', 'DustinHoffman', 'USA', 'f', 36, 2, 0),
        (4, 'JessicaLange', 'JessicaLange', 'USA', 'f', 42, 4, 2),
        (5, 'SoniaBraga', 'SoniaBraga', 'Brasil', 'f', 45, 0, 0);

INSERT INTO FILME
VALUES (1, 'AJurada', 1996, 1000000, 18),
		(2, 'ALetraEscarlate', 1995, '10000000', 24),
        (3, 'Seven', 1995, 1500000, 20),
        (4, 'Tootsie', 1982, 50000, 16),
        (5, 'Tieta', 1995, 200000, 18);

INSERT INTO PERSONAGEM
VALUES (1, 1, 'Mary', 3.000),
		(1, 2, 'Sandy', 5.000),
		(2, 3, 'John', 5.000),
		(3, 4, 'Mary', 1000),
		(4, 4, 'Tootsie', 2.000),
		(5, 5, 'Tieta', 500);

UPDATE ATOR
SET sexo = 'm'
WHERE coda = 2;

DELETE FROM PERSONAGEM
WHERE coda = 5 and codf = 5;

SELECT *FROM PERSONAGEM;
	

        
        
		

