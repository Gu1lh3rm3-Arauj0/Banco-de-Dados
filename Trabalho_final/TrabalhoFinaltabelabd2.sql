use TrabalhoFinal;

INSERT INTO Produtos
VALUES (1, 'Pipoca salgada P', 10.00, 1),
		(2, 'Pipoca salgada M', 15.00, 3),
        (3, 'Pipoca salgada G', 17.00, 4),
		(4, 'Pipoca salgada GG', 20.00, 5),
        (5, 'Pipoca doce M', 17.00, 2),
        (6, 'Pipoca doce G', 22.00, 7),
        (7, 'Pipoca doce GG', 25.00, 6),
		(8, 'Agua 500ml', 5.00, 3),
        (9, 'Refrigerante 500ml', 8.00, 2),
        (10, 'Chá Gelado', 7.00, 1);
	
INSERT INTO Unidade_Estoque
VALUES (1, 10, 'São José dos Campos', 'Rua 1', 25),
		(1, 1, 'São José dos Campos', 'Rua 1', 500),
        (1, 5, 'São José dos Campos', 'Rua 1', 500),
        (1, 8, 'São José dos Campos', 'Rua 1', 50),
        (1, 9, 'São José dos Campos', 'Rua 1', 100),
        (2, 10, 'São Paulo', 'Rua 4', 50),
		(2, 1, 'São Paulo', 'Rua 4', 700),
        (2, 5, 'São Paulo', 'Rua 4', 800),
        (2, 8, 'São Paulo', 'Rua 4', 100),
        (2, 9, 'São Paulo', 'Rua 4', 150);

INSERT INTO Funcionarios
VALUES (1, 'Maria', 1290000000, 'Rua 2', 'Gerente', 1),
		(2, 'José', 1291111111, 'Rua 10', 'Supervisor', 1),
        (3, 'Lucia', 1292222222, 'Rua 7', 'Marketing', 1),
        (4, 'Eduarda', 12933333333, 'Rua 2', 'Atendente', 1),
        (5, 'Carlos', 12944444444, 'Rua 11', 'Atendente', 1),
        (6, 'Clara', 1190000000, 'Rua 200', 'Gerente', 2),
		(7, 'Carlos', 1191111111, 'Rua 810', 'Supervisor', 2),
        (8, 'Rafael', 1192222222, 'Rua 1100', 'Marketing', 2),
        (9, 'Carolina', 11933333333, 'Rua 110', 'Atendente', 2),
        (10, 'Caio', 11944444444, 'Rua 111', 'Atendente', 2);
        
INSERT INTO Clientes
VALUES (1, '12345678901', 'João Silva', '1990-05-15', '2023-01-01', 'joao.silva@email.com'),
		(2, '98765432101', 'Maria Oliveira', '1985-08-22', '2023-01-02', 'maria.oliveira@email.com'),
        (3, '45678901234', 'Carlos Santos', '1998-11-10', '2023-01-03', 'carlos.santos@email.com'),
        (4, '78901234567', 'Ana Pereira', '1980-03-28', '2023-01-04', 'ana.pereira@email.com'),
        (5, '23456789012', 'Fernanda Lima', '1995-07-07', '2023-01-05', 'fernanda.lima@email.com'),
        (6, '89012345678', 'Ricardo Costa', '1987-12-18', '2023-01-06', 'ricardo.costa@email.com'),
        (7, '34567890123', 'Mariana Rocha', '1993-04-02', '2023-01-07', 'mariana.rocha@email.com'),
        (8, '01234567890', 'Paulo Oliveira', '1982-09-12', '2023-01-08', 'paulo.oliveira@email.com'),
        (9, '56789012345', 'Camila Lima', '1996-06-25', '2023-01-09', 'camila.lima@email.com'),
        (10, '90123456789', 'Roberto Santos', '1989-02-14', '2023-01-10', 'roberto.santos@email.com');


INSERT INTO Pedidos 
VALUES (1, 'online', 3, 2),
		(2, 'presencial', 7, 1),
		(3, 'online', 5, 4),
		(4, 'presencial', 2, 3),
		(5, 'online', 8, 5),
		(6, 'presencial', 1, 2),
        (7, 'online', 6, 4),
		(8, 'presencial', 9, 1),
		(9, 'online', 4, 3),
		(10, 'presencial', 10, 5);


INSERT INTO Fornecedor 
VALUES (1, '12345678901', 'fornecedor1@email.com', 1234567890, 987654321),
		(2, '98765432101', 'fornecedor2@email.com', 9876543210, 123456789),
		(3, '45678901234', 'fornecedor3@email.com', 5678901234, 890123456),
		(4, '78901234567', 'fornecedor4@email.com', 8901234567, 234567890),
		(5, '23456789012', 'fornecedor5@email.com', 3456789012, 678901234),
		(6, '89012345678', 'fornecedor6@email.com', 4567890123, 789012345),
		(7, '34567890123', 'fornecedor7@email.com', 5678901234, 901234567),
		(8, '01234567890', 'fornecedor8@email.com', 6789012345, 123456789),
		(9, '56789012345', 'fornecedor9@email.com', 7890123456, 234567890),
		(10, '90123456789', 'fornecedor10@email.com', 8901234567, 345678901);


INSERT INTO Fornece
VALUES (1, 1),
		(2, 2),
		(3, 2),
		(4, 5),
		(5, 8),
		(6, 9),
		(7, 9),
		(8, 9),
		(9, 10),
		(10, 6);


INSERT INTO Salas VALUES
    (101, 30, 1, 1),
    (102, 25, 2, 1),
    (103, 40, 1, 1),
    (104, 20, 3, 1),
    (105, 35, 2, 1),
    (106, 45, 1, 1),
    (107, 30, 3, 2),
    (108, 25, 1, 2),
    (109, 40, 2, 2),
    (110, 20, 3, 2);

INSERT INTO Estudio VALUES
    (1, 'Estúdio A', 'Brasileira'),
    (2, 'Estúdio B', 'Brasileira'),
    (3, 'Estúdio C', 'Inglesa'),
    (4, 'Estúdio D', 'Japonesa'),
    (5, 'Estúdio E', 'Francesa'),
    (6, 'Estúdio F', 'Canadense'),
    (7, 'Estúdio G', 'Australiana'),
    (8, 'Estúdio H', 'Chinesa'),
    (9, 'Estúdio I', 'Sul-coreana'),
    (10, 'Estúdio J', 'Estadunidense');

INSERT INTO Filmes VALUES
    (1, 'Aventuras no Espaço', 1, '2023-01-15', '2023-03-15', 'Ficção Científica', 120, 'Estadunidense', 10),
    (2, 'Policial 1', 2, '2023-02-10', '2023-04-10', 'Suspense', 110, 'Inglesa', 3),
    (3, 'Amor Proibido', 3, '2023-03-20', '2023-05-20', 'Romance', 130, 'Brasileira', 1),
    (4, 'Ação Extrema', 4, '2023-04-05', '2023-06-05', 'Ação', 105, 'Canadense', 6),
    (5, 'Comédia Louca', 5, '2023-05-12', '2023-07-12', 'Comédia', 95, 'Francesa', 5),
    (6, 'Drama Intenso', 6, '2023-06-25', '2023-08-25', 'Drama', 140, 'Brasileira', 2),
    (7, 'Fantasia Mágica', 7, '2023-07-08', '2023-09-08', 'Fantasia', 115, 'Chinesa', 8),
    (8, 'Mistério do Passado', 8, '2023-08-30', '2023-10-30', 'Mistério', 125, 'Japonesa', 4),
    (9, 'Thriller Eletrizante', 9, '2023-09-18', '2023-11-18', 'Thriller', 110, 'Sul-coreana', 9),
    (10, 'Ação e Romance', 10, '2023-10-22', '2023-12-22', 'Ação/Romance', 135, 'Australiana', 7);


INSERT INTO Sessoes VALUES
    (1, '2023-01-15', '14:00:00', 'Português', '2D', 1, 101),
    (2, '2023-02-10', '18:30:00', 'Inglês', '3D', 2, 102),
    (3, '2023-03-20', '20:15:00', 'Português', '2D', 3, 103),
    (4, '2023-04-05', '15:45:00', 'Português', 'IMAX', 4, 104),
    (5, '2023-05-12', '17:30:00', 'Português', '2D', 5, 105),
    (6, '2023-06-25', '19:00:00', 'Português', '3D', 6, 106),
    (7, '2023-07-08', '21:45:00', 'Português', '2D', 7, 107),
    (8, '2023-08-30', '16:30:00', 'Português', 'IMAX', 8, 108),
    (9, '2023-09-18', '14:15:00', 'Inglês', '2D', 9, 109),
    (10, '2023-10-22', '19:45:00', 'Inglês', '3D', 10, 110);


INSERT INTO Ingressos VALUES
    (1, 1, 'Inteira', 25.00, 1),
    (2, 5, 'Meia', 15.00, 2),
    (3, 10, 'Inteira', 30.00, 3),
    (4, 3, 'Meia', 12.50, 4),
    (5, 8, 'Inteira', 28.00, 5),
    (6, 2, 'Meia', 14.00, 6),
    (7, 7, 'Inteira', 26.50, 7),
    (8, 4, 'Meia', 13.00, 8),
    (9, 9, 'Inteira', 31.00, 9),
    (10, 6, 'Meia', 16.00, 10);


INSERT INTO Diretor VALUES
    (1, 'Ana Silva', 'Brasileira'),
    (2, 'John Smith', 'Americano'),
    (3, 'Maria Gonzalez', 'Espanhola'),
    (4, 'Hiroshi Tanaka', 'Japonês'),
    (5, 'Sophie Dupont', 'Francesa'),
    (6, 'Carlos Rodriguez', 'Mexicano'),
    (7, 'Li Wei', 'Chinês'),
    (8, 'Olga Petrova', 'Russa'),
    (9, 'Ji-hoon Kim', 'Sul-coreano'),
    (10, 'Lewis Hamilton', 'Inglês');

INSERT INTO Dirige VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);


INSERT INTO Atores VALUES
    (1, 'Luiz Oliveira', 'Brasileiro'),
    (2, 'Emily Johnson', 'Americana'),
    (3, 'Antonio Hernandez', 'Espanhol'),
    (4, 'Yuki Tanaka', 'Japonês'),
    (5, 'Isabelle Leclerc', 'Francesa'),
    (6, 'Ricardo Gomez', 'Mexicano'),
    (7, 'Wei Chen', 'Chinês'),
    (8, 'Olga Ivanova', 'Russa'),
    (9, 'Ji-hoon Kim', 'Sul-coreano'),
    (10, 'Liam OConnor', 'Irlandês');

INSERT INTO Atua
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);













        