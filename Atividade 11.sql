CREATE database guilhermesouza;

USE guilhermesouza;

CREATE TABLE fonecedor (
    fcod int,
    fone varchar(15),
    status boolean,
    cidade varchar(25),
    PRIMARY KEY(fcod)
);

CREATE TABLE peca (
    pcod int,
    pnome varchar(50) NOT NULL,
    cor varchar(25) NOT NULL,
    peso float NOT NULL,
    cidade varchar(25) NOT NULL,
    PRIMARY KEY(pcod)
);

CREATE TABLE projeto (
    prcod int,
    prnome varchar(50),
    cidade varchar(25),
    PRIMARY KEY(prcod)
);

CREATE TABLE fornecimento (
    fcod int,
    pcod int,
    prcod int,
    quantidade int,
    PRIMARY KEY(fcod, pcod, prcod),
    FOREIGN KEY(fcod) REFERENCES fonecedor(fcod),
    FOREIGN KEY(pcod) REFERENCES peca(pcod),
    FOREIGN KEY(prcod) REFERENCES projeto(prcod) ON DELETE CASCADE
);

ALTER TABLE projeto
ADD horas time;

ALTER TABLE peca
DROP COLUMN cidade;