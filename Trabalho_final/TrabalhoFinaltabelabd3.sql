use TrabalhoFinal;

# Nome dos clientes que assistiram filme no dia 15 de janeiro de 2023
SELECT c.nome
FROM Clientes c, Sessoes s, Ingressos i, Pedidos p
Where s.data_sessao = '2023-01-15' and
c.cod_cliente = p.cod_cliente and
p.cod_pedido = i.cod_pedido and
i.cod_sessao = s.cod_sessao;

# Quantidade de estoque em cada unidade, ordenado pelo cod de cada uma
SELECT u.cod_unidade, u.nome_unidade, COUNT(u.qtd_estoque) as total_estoque
FROM Unidade_Estoque u
GROUP BY u.cod_unidade, u.nome_unidade
ORDER BY u.cod_unidade;

# Nome de todos os clientes e o tipo dos pedidos (se nao fez nenhum pedido deve aparecer null)
SELECT c.nome, p.tipo_pedido
FROM Clientes c
LEFT JOIN Pedidos p ON c.cod_cliente=p.cod_cliente;

# A média dos valores das pipocas vendidas pelo cinema
SELECT AVG(valor) as media_pipoca
FROM Produtos
WHERE descricao LIKE 'Pipoca %';

# Atores e suas nacionalidades que atuaram no filme Mistério do Passado
SELECT ato.nome, ato.nacionalidade
FROM Atores ato, Atua atu, Filmes f
WHERE f.nome_filme = 'Mistério do Passado'
and f.cod_filme = atu.cod_filme
and atu.cod_ator = ato.cod_ator;

# Nome de todos os estúdios e seus respectivos filmes
SELECT e.nome as nome_estudio, f.nome_filme
FROM estudio e
LEFT JOIN filmes f ON e.cod_estudio = f.cod_estudio;

# Filmes com seus atores
Select f.nome_filme, ato.nome as nome_ator
FROM filmes f, atores ato, atua
WHERE f.cod_filme = atua.cod_filme
and atua.cod_ator = ato.cod_ator;

# Código do pedido com tipo de pedido, nome do funcionário e nome do cliente
SELECT p.cod_pedido, p.tipo_pedido, c.nome AS nome_cliente, f.nome AS nome_funcionario
FROM Pedidos p
INNER JOIN Clientes c ON p.cod_cliente = c.cod_cliente
INNER JOIN Funcionarios f ON p.cod_funcionario = f.cod_funcionario;

#Mostrar o código do fornecedor e o produto que ele fornece com o código
SELECT fr.cod_fornecedor, p.cod_produto, p.descricao AS produto_descricao
FROM Fornecedor fr
JOIN Fornece f ON fr.cod_fornecedor = f.cod_fornecedor
JOIN Produtos p ON f.cod_produto = p.cod_produto;

# Média dos valores dos produtos agrupados por código de produto
SELECT cod_produto, AVG(valor) as media_valor
FROM Produtos
GROUP BY cod_produto
ORDER BY media_valor DESC;

# Total de filmes de cada diretor
SELECT d.cod_diretor, d.nome as nome_diretor, COUNT(df.cod_filme) as total_filmes
FROM Diretor d
JOIN Dirige df ON d.cod_diretor = df.cod_diretor
GROUP BY d.cod_diretor;

# Data da última sessão de cada filme, ordenando o resultado pela data da última sessão em ordem decrescente
SELECT f.cod_filme, f.nome_filme, MAX(s.data_sessao) as ultima_sessao
FROM Filmes f
JOIN Sessoes s ON f.cod_filme = s.cod_filme
GROUP BY f.cod_filme, f.nome_filme
ORDER BY ultima_sessao DESC;

# Clientes que fizeram mais de um pedido
SELECT c.cod_cliente, c.nome as nome_cliente, COUNT(p.cod_pedido) as total_pedidos
FROM Clientes c
JOIN Pedidos p ON c.cod_cliente = p.cod_cliente
GROUP BY c.cod_cliente, c.nome
HAVING total_pedidos > 1

