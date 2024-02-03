-- CREATE database TrabalhoFinal;
use TrabalhoFinal;
    
CREATE table Produtos(
	cod_produto int, 
    descricao varchar(50),
    valor float,
    cod_pedido int,
    
    PRIMARY KEY (cod_produto)
    );
    
CREATE table Unidade_Estoque(
	cod_unidade int, 
    cod_produto int,
    nome_unidade varchar(50),
    endereco varchar(50),
    qtd_estoque int,
    
    PRIMARY KEY (cod_unidade, cod_produto),
    FOREIGN KEY(cod_produto) REFERENCES Produtos(cod_produto)
    );
    
CREATE table Funcionarios(
	cod_funcionario int,
    nome varchar(60),
    telefone varchar(14), 
    endereco varchar(50),
    cargo varchar(50),
    cod_unidade int,
    
    PRIMARY KEY (cod_funcionario),
    FOREIGN KEY(cod_unidade) REFERENCES Unidade_Estoque(cod_unidade)
    );
    
CREATE table Clientes(
	cod_cliente int,
    cpf varchar(11),
    nome varchar(50),
    data_nasc date,
    data_cadastro date,
    email varchar(40),
    
    PRIMARY KEY (cod_cliente)
    );
    
CREATE table Pedidos(
	cod_pedido int,
    tipo_pedido varchar(10), 
    cod_cliente int,
    cod_funcionario int,
    
    PRIMARY KEY (cod_pedido),
    FOREIGN KEY(cod_cliente) REFERENCES Clientes(cod_cliente),
    FOREIGN KEY(cod_funcionario) REFERENCES Funcionarios(cod_funcionario)
    );

CREATE table Fornecedor(
	cod_fornecedor int,
    cnpj varchar(11), 
    email varchar(40),
    telefone_1 varchar(14),
    telefone_2 varchar(14),
    
    PRIMARY KEY (cod_fornecedor)
    );
    
CREATE table Fornece(
	cod_fornecedor int,
    cod_produto int,
    
    PRIMARY KEY (cod_fornecedor, cod_produto),
    FOREIGN KEY(cod_fornecedor) REFERENCES Fornecedor(cod_fornecedor),
    FOREIGN KEY(cod_produto) REFERENCES Produtos(cod_produto)
    );
    
CREATE table Salas(
	numero_sala int, 
    capacidade int, 
    categoria int, 
    cod_unidade int,
    
    PRIMARY KEY (numero_sala),
    FOREIGN KEY(cod_unidade) REFERENCES Unidade_Estoque(cod_unidade)
    );
    
 CREATE table Estudio(
	cod_estudio int,
    nome varchar(30),
    nacionalidade varchar(30),
    
    PRIMARY KEY (cod_estudio)
    );   

CREATE table Filmes(
	cod_filme int,
    nome_filme varchar(50),
    cassificacao_etaria int,
    data_estreia date,
    data_fim_catalogo date,
    genero varchar(30),
    duracao int, -- qtd de minutos
    nacionalidade varchar(30),
    cod_estudio int,
    
    PRIMARY KEY (cod_filme),
    FOREIGN KEY(cod_estudio) REFERENCES Estudio(cod_estudio)
    );
    
CREATE table Sessoes(
	cod_sessao int,
    data_sessao date,
    hora_inicio time, 
    idioma varchar(20),
    tipo_sessao varchar(30),
    cod_filme int,
    numero_sala int,
    
    PRIMARY KEY (cod_sessao),
    FOREIGN KEY(cod_filme) REFERENCES Filmes(cod_filme),
    FOREIGN KEY(numero_sala) REFERENCES Salas(numero_sala)
    );
    
CREATE table Ingressos(
	cod_sessao int,
    cadeira int, 
    tipo varchar(10), 
    valor float,
    cod_pedido int,
    
    PRIMARY KEY (cod_sessao, cadeira),
    FOREIGN KEY(cod_sessao) REFERENCES Clientes(cod_cliente),
    FOREIGN KEY(cod_pedido) REFERENCES Sessoes(cod_sessao)
    );

CREATE table Diretor(
	cod_diretor int,
    nome varchar(40), 
    nacionalidade varchar(30),
    
    PRIMARY KEY (cod_diretor)
    );    
    
CREATE table Dirige(
	cod_diretor int, 
    cod_filme int,
    
    PRIMARY KEY (cod_diretor, cod_filme),
    FOREIGN KEY(cod_filme) REFERENCES Filmes(cod_filme),
    FOREIGN KEY(cod_diretor) REFERENCES Diretor(cod_diretor)
    );

CREATE table Atores(
	cod_ator int,
    nome varchar(50),
    nacionalidade varchar(30),
    
    PRIMARY KEY (cod_ator)
    );

CREATE table Atua(
	cod_ator int, 
    cod_filme int,
    
    PRIMARY KEY (cod_ator, cod_filme),
    FOREIGN KEY(cod_filme) REFERENCES Filmes(cod_filme),
    FOREIGN KEY(cod_ator) REFERENCES Atores(cod_ator)
    );
    
