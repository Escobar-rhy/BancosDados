-- Comando para criar tabela

CREATE TABLE tb_alunos(
matricula SERIAL PRIMARY KEY NOT NULL,
  nome varchar(100) NOT NULL,
  dataNasc 	DATE NOT NULL,
  cpf BIGINT NOT NULL,
  altura NUMERIC (3,2)
);

-- Inserir dados na tabela de alunos
INSERT INTO tb_alunos
(nome,dataNasc,cpf,altura)
VALUES
('Maria Andretti','2000-10-25',78945612310,1.72);

-- Consultar dados na tabela de alunos
SELECT * FROM tb_alunos

-- Apagar itens na tabela de alunos
DELETE FROM tb_alunos WHERE matricula>=1;

-- Apagar os alunos de matricula 2, 5, 40 e 21
DELETE FROM tb_alunos WHERE matricula IN(2,5,40,21);

-- Apagar os alunos de matricula entre 2 e 10
DELETE FROM tb_alunos WHERE matricula>=2 AND matricula <=18;

-- Cadastrar vários alunos
INSERT INTO tb_alunos
(1.65, 45233368798, '2010-12-31', 'Maria Andretti'),
(3.75, 11122233341, '2020-02-19', 'Rhay Escobar'),
(1.84, 9998887770, '2021-07-25', 'Isabelli Lessa');

--Consultar os dados
SELECT * FROM tb_alunos;

-- Atualizar dados na tabela,mudar o nome e altura da Rhay Escobar
UPDATE tb_alunos SET nome='Rhayane Escobar', altura=1.75
WHERE matricula=3;
