-- 1. CRIAÇÃO DE TABELAS

-- Cria a tabela principal para armazenar informações dos produtos.
CREATE TABLE tb_produtos(
id_produto SERIAL PRIMARY KEY NOT NULL,
nome_produto VARCHAR(80) NOT NULL,
preco NUMERIC NOT NULL,
fk_id_categoria INT,
fk_id_fabricante INT
);

-- Cria a tabela de categorias para classificar os produtos.
CREATE TABLE tb_categorias(
id_categoria SERIAL PRIMARY KEY NOT NULL,
nome_categoria VARCHAR(50) NOT NULL
);

-- Cria a tabela de fabricantes (marcas).
CREATE TABLE tb_fabricantes(
id_fabricante SERIAL PRIMARY KEY NOT NULL,
nome_fabricante VARCHAR(50) NOT NULL
);

-- 2. DEFINIÇÃO DE CHAVES ESTRANGEIRAS (FOREIGN KEYS)

-- Altera a tabela 'tb_produtos' para formalizar os relacionamentos.
ALTER TABLE "tb_produtos"
ADD FOREIGN KEY ("fk_id_categoria") REFERENCES "tb_categorias"("id_categoria"),
ADD FOREIGN KEY ("fk_id_fabricante") REFERENCES "tb_fabricantes"("id_fabricante");

-- 3. INSERÇÃO DE DADOS

-- Insere dados na tabela de categorias.
INSERT INTO tb_categorias (id_categoria, nome_categoria) VALUES
(1, 'Smartphones'),
(2, 'Smart TVs'),
(3, 'Notebooks');

-- Insere dados na tabela de fabricantes.
INSERT INTO tb_fabricantes (id_fabricante, nome_fabricante) VALUES
(1, 'Samsung'),
(2, 'Xiaomi'),
(3, 'Lenovo'),
(4, 'Asus');

-- Insere dados na tabela de produtos.
INSERT INTO tb_produtos (id_produto, nome_produto, preco, fk_id_categoria, fk_id_fabricante) VALUES
(1, 'Smartphone A31s', 1199.99, 1, 1),
(2, 'Notebook Intel L5', 3999.99, 3, 3),
(3, 'Smartphone J Prime', 599.99, 1, 1),
(4, 'Smartphone MI 11', 8999.99, 1, 2),
-- O produto 5 possui fabricante NULL
(5, 'Smart TV 50', 2699.99, 2, NULL),
(6, 'Smart TV 60', 3599.99, 2, 1),
-- O produto 7 possui categoria NULL
(7, 'Notebook Intel L3', 2399.99, NULL, 4),
-- O produto 8 possui categoria e fabricante NULL
(8, 'Geladeira FrostFree 400L', 2599.99, NULL, NULL);

-- 4. CONSULTAS SIMPLES 

-- Consulta que lista produtos e suas categorias usando INNER JOIN.
SELECT
P.nome_produto, -- Seleciona o nome do produto
P.preco,        -- Seleciona o preço
C.nome_categoria -- Seleciona o nome da categoria
FROM
tb_produtos P -- Tabela 'produtos' com apelido P
INNER JOIN
tb_categorias C -- Junção interna com a tabela 'categorias'
ON
P.fk_id_categoria = C.id_categoria; -- Condição: igualdade nas chaves

-- Consulta que lista produtos e seus fabricantes usando INNER JOIN.
SELECT
P.nome_produto,
P.preco,
F.nome_fabricante
FROM
tb_produtos P
INNER JOIN
tb_fabricantes F -- Junção interna com a tabela 'fabricantes'
ON
P.fk_id_fabricante = F.id_fabricante;

-- Consulta que lista produtos e suas categorias usando LEFT JOIN.
-- Todos os produtos da tabela 'tb_produtos' serão incluídos,
SELECT
P.nome_produto,
P.preco,
C.nome_categoria
FROM
tb_produtos P
LEFT JOIN
tb_categorias C
ON
P.fk_id_categoria = C.id_categoria;

-- 5. CRIAÇÃO DE VIEWS 

-- VIEW: RIGHT JOIN - Produtos e Categorias
-- Garante que TODAS as categorias sejam listadas, mesmo que não haja produtos associados a elas (NULL).
CREATE VIEW view_produtos_por_categoria_right AS
SELECT
P.nome_produto,
P.preco,
C.nome_categoria
FROM
tb_produtos P
RIGHT JOIN
tb_categorias C
ON
P.fk_id_categoria = C.id_categoria;

-- VIEW: LEFT JOIN - Produtos e Fabricantes
-- Garante que TODOS os produtos sejam listados, mesmo que o fabricante seja NULL (produtos 5 e 8).
CREATE VIEW view_produtos_por_fabricante_left AS
SELECT
P.nome_produto,
P.preco,
F.nome_fabricante
FROM
tb_produtos P
LEFT JOIN
tb_fabricantes F
ON
P.fk_id_fabricante = F.id_fabricante;

-- VIEW: RIGHT JOIN - Produtos e Fabricantes
-- Garante que TODOS os fabricantes sejam listados, mesmo que não tenham produtos associados a eles (NULL).
CREATE VIEW view_produtos_por_fabricante_right AS
SELECT
P.nome_produto,
P.preco,
F.nome_fabricante
FROM
tb_produtos P
RIGHT JOIN
tb_fabricantes F
ON
P.fk_id_fabricante = F.id_fabricante;

--Fimmm...