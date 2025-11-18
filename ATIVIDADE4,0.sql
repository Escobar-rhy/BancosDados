CREATE TABLE tb_clientes(
id_cliente SERIAL PRIMARY KEY NOT NULL,
nome_cliente VARCHAR(120) NOT NULL,
email VARCHAR(80) NOT NULL,
telefone VARCHAR(20) NOT NULL
);

CREATE TABLE tb_produtos(
id_produto SERIAL PRIMARY KEY NOT NULL,
nome_produto VARCHAR(50) NOT NULL,
preco NUMERIC(10,2) NOT NULL,
estoque INT NOT NULL
);

CREATE TABLE tb_pedidos(
id_pedidos SERIAL PRIMARY KEY NOT NULL,
fk_id_cliente INT NOT NULL,
fk_id_produto INT NOT NULL,
quantidade INT NOT NULL,
data_pedido DATE NOT NULL
);

--tarefa 5 :  Usar alter table para transformar fk_id_cliente em chave estrangeira.
ALTER TABLE tb_pedidos
ADD CONSTRAINT fk_pedidos_cliente
FOREIGN KEY (fk_id_cliente)
REFERENCES tb_clientes (id_cliente);

--tarefa 10 : Comando para buscar apenas produtos com preço acima de R$50,00.
SELECT *
FROM tb_produtos
WHERE preco > 50.00;

--tarefa 15 : Criar uma consulta para listar todos os clientes em ordem alfabética do nome de A-Z.
SELECT *
FROM tb_clientes
ORDER BY nome_cliente ASC;

--tarefa 20 : Criar uma consulta para lista os produtos com estoque da quantidade maior para a menor.
SELECT *
FROM tb_produtos
ORDER BY estoque DESC;
