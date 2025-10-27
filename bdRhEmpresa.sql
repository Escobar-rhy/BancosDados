-- ============================================
-- TABELA DEPARTAMENTOS
-- ============================================
CREATE TABLE departamentos (
    id_departamento SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

INSERT INTO departamentos (nome) VALUES
('Vendas'),
('TI'),
('Recursos Humanos'),
('Financeiro'),
('Logística'),
('Marketing'),
('Suporte'),
('Compras'),
('Produção'),
('Jurídico');

-- ============================================
-- TABELA FUNCIONARIOS
-- ============================================
CREATE TABLE funcionarios (
    id_funcionario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    salario NUMERIC(10,2),
    data_admissao DATE,
    id_departamento INT REFERENCES departamentos(id_departamento)
);

INSERT INTO funcionarios (nome, cargo, salario, data_admissao, id_departamento) VALUES
('Ana Silva', 'Vendedora', 3500.00, '2020-03-15', 1),
('Carlos Souza', 'Analista de Sistemas', 6200.00, '2019-07-10', 2),
('Bruna Costa', 'Recursos Humanos', 4000.00, '2021-01-20', 3),
('Diego Rocha', 'Contador', 5000.00, '2018-09-05', 4),
('Fernanda Lima', 'Motorista', 2500.00, '2022-05-17', 5),
('Rafael Alves', 'Vendedor', 3600.00, '2020-11-12', 1),
('Juliana Santos', 'Desenvolvedora', 7000.00, '2019-03-22', 2),
('Lucas Prado', 'Técnico de Suporte', 3100.00, '2021-04-10', 7),
('Patrícia Ramos', 'Analista Financeira', 5200.00, '2020-08-18', 4),
('Marcos Paulo', 'Motorista', 2400.00, '2023-01-02', 5),
('Paula Andrade', 'Assistente de Marketing', 3200.00, '2022-02-12', 6),
('José Ferreira', 'Analista de Compras', 4500.00, '2019-06-09', 8),
('André Cardoso', 'Desenvolvedor Backend', 6900.00, '2021-07-11', 2),
('Natália Souza', 'Recrutadora', 3900.00, '2022-04-25', 3),
('Roberto Dias', 'Gerente de Produção', 8800.00, '2018-11-30', 9),
('Simone Moraes', 'Auxiliar de Produção', 2800.00, '2021-10-05', 9),
('Fábio Teles', 'Advogado', 7600.00, '2019-02-20', 10),
('Eduarda Gomes', 'Auxiliar de RH', 3400.00, '2022-08-14', 3),
('Tiago Pinto', 'Desenvolvedor Frontend', 6800.00, '2020-09-01', 2),
('Camila Dias', 'Vendedora', 3700.00, '2023-03-18', 1),
('Igor Santos', 'Analista de Suporte', 4100.00, '2021-09-07', 7),
('Beatriz Silva', 'Assistente Financeiro', 3500.00, '2020-05-23', 4),
('Vitor Barbosa', 'Comprador', 4800.00, '2019-12-11', 8),
('Tatiane Rocha', 'Analista de Marketing', 5100.00, '2022-06-29', 6),
('Julio Almeida', 'Motorista', 2450.00, '2022-12-08', 5),
('Letícia Martins', 'Designer', 5200.00, '2021-03-02', 6),
('Guilherme Lopes', 'Desenvolvedor Fullstack', 7500.00, '2020-02-12', 2),
('Michele Ferreira', 'Analista de Logística', 4800.00, '2021-11-21', 5),
('Pedro Santos', 'Auxiliar Administrativo', 3000.00, '2023-05-10', NULL),
('Larissa Nunes', 'Assistente de Compras', 3300.00, '2023-02-14', NULL),
('Ricardo Teixeira', 'Estagiário de TI', 1800.00, '2024-01-09', 2),
('Fernanda Souza', 'Estagiária de RH', 1700.00, '2024-03-10', 3),
('Adriana Lopes', 'Consultora Comercial', 4100.00, '2022-11-12', NULL);

-- ============================================
-- TABELA CLIENTES
-- ============================================
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100),
    estado CHAR(2)
);

INSERT INTO clientes (nome, cidade, estado) VALUES
('Maria Oliveira', 'São Paulo', 'SP'),
('José Pereira', 'Campinas', 'SP'),
('Ricardo Lima', 'Rio de Janeiro', 'RJ'),
('Patrícia Gomes', 'Curitiba', 'PR'),
('Lucas Silva', 'Belo Horizonte', 'MG'),
('Carla Mendes', 'Porto Alegre', 'RS'),
('Paulo Henrique', 'Salvador', 'BA'),
('Tatiana Sousa', 'Fortaleza', 'CE'),
('Eduardo Alves', 'Natal', 'RN'),
('Mariana Castro', 'Belém', 'PA'),
('Daniel Moura', 'Florianópolis', 'SC'),
('Bruno Vieira', 'Manaus', 'AM'),
('Letícia Ramos', 'Niterói', 'RJ'),
('Renata Costa', 'Recife', 'PE'),
('Gabriel Monteiro', 'Joinville', 'SC'),
('Sônia Almeida', 'Campo Grande', 'MS'),
('Felipe Souza', 'Uberlândia', 'MG'),
('Danilo Azevedo', 'Londrina', 'PR'),
('Carolina Mendes', 'Vitória', 'ES'),
('Juliana Faria', 'Aracaju', 'SE'),
('Rogério Santos', 'Ribeirão Preto', 'SP'),
('Helena Oliveira', 'Santos', 'SP'),
('Marcelo Duarte', 'Sorocaba', 'SP'),
('Célia Andrade', 'Maringá', 'PR'),
('Rodrigo Castro', 'Pelotas', 'RS'),
('Camila Brito', 'Cuiabá', 'MT'),
('Sérgio Nogueira', 'João Pessoa', 'PB'),
('Amanda Rocha', 'Teresina', 'PI'),
('Raquel Fernandes', 'Macapá', 'AP'),
('Vinícius Prado', 'Boa Vista', 'RR');

-- ============================================
-- TABELA PRODUTOS
-- ============================================
CREATE TABLE produtos (
    id_produto SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco NUMERIC(10,2),
    estoque INT
);

INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
('Notebook Dell', 'Informática', 4200.00, 12),
('Mouse Logitech', 'Informática', 120.00, 80),
('Cadeira Gamer', 'Móveis', 950.00, 20),
('Camiseta Polo', 'Vestuário', 90.00, 100),
('Smartphone Samsung', 'Eletrônicos', 2500.00, 25),
('Fone Bluetooth', 'Eletrônicos', 300.00, 50),
('Mesa de Escritório', 'Móveis', 650.00, 15),
('Teclado Mecânico', 'Informática', 350.00, 40),
('Monitor LG 24"', 'Informática', 890.00, 30),
('Tablet Lenovo', 'Eletrônicos', 1400.00, 18),
('Impressora HP', 'Informática', 700.00, 22),
('Sofá 3 Lugares', 'Móveis', 2100.00, 10),
('Smartwatch Xiaomi', 'Eletrônicos', 600.00, 35),
('Camiseta Esportiva', 'Vestuário', 75.00, 80),
('Calça Jeans', 'Vestuário', 120.00, 70),
('Tênis Nike', 'Vestuário', 350.00, 60),
('Smart TV Samsung 50"', 'Eletrônicos', 3200.00, 14),
('Cadeira de Escritório', 'Móveis', 550.00, 22),
('Mousepad Gamer', 'Informática', 60.00, 90),
('HD Externo 1TB', 'Informática', 380.00, 25),
('Pendrive 64GB', 'Informática', 70.00, 120),
('Carregador Portátil', 'Eletrônicos', 150.00, 55),
('Webcam Logitech', 'Informática', 420.00, 30),
('Ar Condicionado LG', 'Eletrodomésticos', 2800.00, 8),
('Liquidificador Philips', 'Eletrodomésticos', 320.00, 25),
('Geladeira Brastemp', 'Eletrodomésticos', 4800.00, 6),
('Fogão Consul 4 bocas', 'Eletrodomésticos', 1300.00, 10),
('Copo Térmico', 'Utensílios', 80.00, 90),
('Panela de Pressão', 'Utensílios', 180.00, 40),
('Cafeteira Nespresso', 'Eletrodomésticos', 1100.00, 12);

-- ============================================
-- TABELA VENDAS
-- ============================================
CREATE TABLE vendas (
    id_venda SERIAL PRIMARY KEY,
    id_funcionario INT REFERENCES funcionarios(id_funcionario),
    id_cliente INT REFERENCES clientes(id_cliente),
    data_venda DATE,
    total NUMERIC(10,2)
);

-- (Gerando 30 vendas variadas)
INSERT INTO vendas (id_funcionario, id_cliente, data_venda, total) VALUES
(1, 1, '2024-10-10', 4320.00),
(6, 2, '2024-10-12', 500.00),
(1, 3, '2024-10-15', 2500.00),
(7, 4, '2024-10-18', 2800.00),
(2, 5, '2024-10-20', 700.00),
(4, 6, '2024-10-22', 950.00),
(20, 7, '2024-11-01', 3750.00),
(21, 8, '2024-11-03', 2200.00),
(3, 9, '2024-11-04', 1250.00),
(8, 10, '2024-11-05', 3100.00),
(14, 11, '2024-11-06', 450.00),
(9, 12, '2024-11-07', 560.00),
(10, 13, '2024-11-08', 800.00),
(22, 14, '2024-11-09', 950.00),
(17, 15, '2024-11-10', 2400.00),
(25, 16, '2024-11-12', 1250.00),
(18, 17, '2024-11-14', 350.00),
(19, 18, '2024-11-15', 4800.00),
(11, 19, '2024-11-16', 1700.00),
(12, 20, '2024-11-17', 2800.00),
(27, 21, '2024-11-18', 3200.00),
(28, 22, '2024-11-19', 1400.00),
(16, 23, '2024-11-20', 5100.00),
(23, 24, '2024-11-21', 1900.00),
(13, 25, '2024-11-22', 2400.00),
(26, 26, '2024-11-23', 950.00),
(24, 27, '2024-11-24', 2200.00),
(5, 28, '2024-11-25', 2600.00),
(29, 29, '2024-11-26', 1200.00),
(30, 30, '2024-11-27', 800.00);

-- ============================================
-- TABELA ITENS_VENDA
-- ============================================
CREATE TABLE itens_venda (
    id_item SERIAL PRIMARY KEY,
    id_venda INT REFERENCES vendas(id_venda),
    id_produto INT REFERENCES produtos(id_produto),
    quantidade INT,
    preco_unitario NUMERIC(10,2)
);

INSERT INTO itens_venda (id_venda, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1, 4200.00),
(1, 2, 1, 120.00),
(2, 2, 2, 120.00),
(2, 4, 3, 90.00),
(3, 5, 1, 2500.00),
(4, 7, 2, 650.00),
(5, 2, 5, 120.00),
(5, 6, 1, 300.00),
(6, 3, 1, 950.00),
(7, 9, 2, 890.00),
(8, 10, 1, 1400.00),
(9, 14, 3, 75.00),
(10, 5, 1, 2500.00),
(11, 6, 1, 300.00),
(12, 20, 3, 70.00),
(13, 19, 2, 60.00),
(14, 21, 2, 150.00),
(15, 11, 1, 700.00),
(16, 25, 1, 4800.00),
(17, 26, 1, 1300.00),
(18, 27, 1, 80.00),
(19, 29, 1, 180.00),
(20, 17, 1, 3200.00),
(21, 16, 2, 350.00),
(22, 4, 4, 90.00),
(23, 18, 2, 550.00),
(24, 15, 3, 120.00),
(25, 2, 1, 120.00),
(26, 3, 1, 950.00),
(27, 24, 1, 320.00),
(28, 23, 1, 420.00),
(29, 22, 2, 150.00),
(30, 8, 1, 350.00);

-- ============================================
-- Consultas básicas
-- ============================================

-- Listar todos os funcionários que não trabalham em nenhum departamento.
SELECT * FROM funcionarios
WHERE id_departamento IS NULL;

-- Listar os funcionários que ganham entre R$ 3.000 e R$ 6.000.
SELECT * FROM funcionarios
WHERE salario BETWEEN 3000.00 AND 6000.00
ORDER BY salario;

-- Exibir os funcionários cujo nome começa com a letra ‘J’.
SELECT * FROM funcionarios
WHERE nome LIKE 'J%';

-- Listar todos os produtos da categoria ‘Eletrônicos’ ou ‘Informática’.
SELECT * FROM produtos
WHERE categoria IN ('Eletrônicos', 'Informática');

-- Mostrar os clientes que moram em uma cidade que contenha a palavra ‘Santos’.
SELECT * FROM clientes
WHERE cidade LIKE '%Santos%';

-- Listar os produtos com estoque entre 10 e 50 unidades.
SELECT * FROM produtos
WHERE estoque BETWEEN 10 AND 50
ORDER BY estoque;

-- Exibir os funcionários contratados após 2020, em ordem decrescente de salário.
SELECT * FROM funcionarios
WHERE data_admissao > '2020-12-31'
ORDER BY salario DESC;

-- Mostrar os 5 funcionários com os maiores salários.
SELECT * FROM funcionarios
ORDER BY salario DESC
LIMIT 5;

-- Listar os produtos cujo nome termina com ‘Pro’.
-- OBS: Não existe nenhum produto com nome que termina em 'Pro' nos dados de exemplo,
-- mas a consulta é esta:
SELECT * FROM produtos
WHERE nome LIKE '%Pro';

-- Exibir todos os funcionários cujo cargo contém a palavra ‘Analista’.
SELECT * FROM funcionarios
WHERE cargo LIKE '%Analista%';


-- ============================================
-- Consultas com funções agregadas
-- ============================================

-- Mostrar o total de funcionários por departamento.
SELECT d.nome AS departamento, COUNT(f.id_funcionario) AS total_funcionarios
FROM departamentos d
JOIN funcionarios f ON d.id_departamento = f.id_departamento
GROUP BY d.nome
ORDER BY total_funcionarios DESC;

-- Exibir o salário médio por departamento.
SELECT d.nome AS departamento, AVG(f.salario) AS salario_medio
FROM departamentos d
JOIN funcionarios f ON d.id_departamento = f.id_departamento
GROUP BY d.nome
ORDER BY salario_medio DESC;

-- Exibir o menor e o maior salário da empresa.
SELECT
    MIN(salario) AS menor_salario,
    MAX(salario) AS maior_salario
FROM funcionarios;

-- Listar apenas os departamentos que possuem mais de 5 funcionários.
SELECT d.nome AS departamento, COUNT(f.id_funcionario) AS total_funcionarios
FROM departamentos d
JOIN funcionarios f ON d.id_departamento = f.id_departamento
GROUP BY d.nome
HAVING COUNT(f.id_funcionario) > 5
ORDER BY total_funcionarios DESC;

-- Exibir a soma total das vendas realizadas em cada mês.
-- Esta consulta requer uma função de extração de mês, que pode variar (e.g., EXTRACT, MONTHNAME, TO_CHAR).
-- Usando EXTRACT para ser mais compatível com PostgreSQL ou TO_CHAR para formatação:
SELECT
TO_CHAR(data_venda, 'YYYY-MM') AS ano_mes,
SUM(total) AS soma_total_vendas
FROM vendas
GROUP BY ano_mes
ORDER BY ano_mes;

-- Mostrar o produto mais vendido (com base na soma das quantidades).
SELECT p.nome AS produto, SUM(iv.quantidade) AS quantidade_total_vendida
FROM itens_venda iv
JOIN produtos p ON iv.id_produto = p.id_produto
GROUP BY p.nome
ORDER BY quantidade_total_vendida DESC
LIMIT 1;

-- Exibir o total de vendas por cliente.
SELECT c.nome AS cliente, SUM(v.total) AS total_comprado
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.nome
ORDER BY total_comprado DESC;

-- Listar os departamentos ordenados pelo salário médio decrescente.
SELECT d.nome AS departamento, AVG(f.salario) AS salario_medio
FROM departamentos d
JOIN funcionarios f ON d.id_departamento = f.id_departamento
GROUP BY d.nome
ORDER BY salario_medio DESC;

-- Mostrar o número total de funcionários que ganham acima de R$ 8.000.
SELECT COUNT(id_funcionario) AS total_funcionarios_acima_8k
FROM funcionarios
WHERE salario > 8000.00;

-- Exibir o valor médio das vendas com status ‘Concluída’.
-- OBS: A tabela 'vendas' fornecida não possui uma coluna 'status',
-- então assumiremos que todas as vendas inseridas estão 'Concluídas'.
SELECT AVG(total) AS valor_medio_vendas
FROM vendas;


-- ============================================
-- Consultas com JOINs
-- ============================================

-- Listar o nome do funcionário e o nome do departamento em que ele trabalha.
SELECT f.nome AS nome_funcionario, d.nome AS nome_departamento
FROM funcionarios f
JOIN departamentos d ON f.id_departamento = d.id_departamento
ORDER BY nome_departamento, nome_funcionario;

-- OBS: Não existe tabela de 'projetos' ou 'participacao'. 
-- se houvesse:
/*
SELECT p.nome_projeto, f.nome AS nome_funcionario
FROM projetos p
JOIN participacao_projeto pp ON p.id_projeto = pp.id_projeto
JOIN funcionarios f ON pp.id_funcionario = f.id_funcionario;
*/

-- Exibir as vendas mostrando o nome do cliente e o nome do produto vendido.
SELECT
v.id_venda,
c.nome AS nome_cliente,
p.nome AS nome_produto,
iv.quantidade,
iv.preco_unitario
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN itens_venda iv ON v.id_venda = iv.id_venda
JOIN produtos p ON iv.id_produto = p.id_produto
ORDER BY v.id_venda;

-- OBS: Não existe tabela de 'projetos' ou 'alocacao'.
-- se houvesse:
/*
SELECT f.nome AS nome_funcionario, p.nome_projeto
FROM funcionarios f
LEFT JOIN alocacao_projeto ap ON f.id_funcionario = ap.id_funcionario
LEFT JOIN projetos p ON ap.id_projeto = p.id_projeto
ORDER BY f.nome;
*/

-- *Adaptação para o contexto existente: Listar o nome do funcionário e o departamento,
-- incluindo funcionários sem departamento (NULL).
SELECT f.nome AS nome_funcionario, d.nome AS nome_departamento
FROM funcionarios f
LEFT JOIN departamentos d ON f.id_departamento = d.id_departamento
ORDER BY nome_departamento NULLS FIRST, nome_funcionario;

-- Mostrar o nome dos clientes que compraram produtos da categoria ‘Informática’.
SELECT DISTINCT c.nome AS nome_cliente
FROM clientes c
JOIN vendas v ON c.id_cliente = v.id_cliente
JOIN itens_venda iv ON v.id_venda = iv.id_venda
JOIN produtos p ON iv.id_produto = p.id_produto
WHERE p.categoria = 'Informática'
ORDER BY c.nome;
