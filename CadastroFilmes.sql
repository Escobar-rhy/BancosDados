-- 1. CRIAÇÃO DA TABELA DE FILMES
-- Comando para criar a tabela principal que armazenará os dados dos filmes.
CREATE TABLE tb_filmes (
    -- Chave Primária: Identificador único e sequencial para cada filme.
    -- SERIAL: Gera números automaticamente (1, 2, 3, ...).
    -- PRIMARY KEY: Garante que cada valor é único e não nulo.
    cod_film SERIAL PRIMARY KEY,

    -- Nome do filme: Não pode ser vazio (NOT NULL) e tem um limite de 100 caracteres.
    nome_film VARCHAR(100) NOT NULL,

    -- Ano de lançamento: Usa o tipo INTEGER para números inteiros.
    ano_lancamento INTEGER,

    -- Gênero do filme: Limite de 50 caracteres.
    genero VARCHAR(50),

    -- Diretor do filme: Limite de 100 caracteres.
    diretor VARCHAR(100)
);

-- 2. INSERÇÃO DE DADOS (CADASTRAR 4 FILMES)

-- O 'cod_film' é omitido porque a coluna SERIAL insere o valor automaticamente.
INSERT INTO tb_filmes (nome_film, ano_lancamento, genero, diretor) VALUES
('A Viagem de Chihiro', 2001, 'Animação', 'Hayao Miyazaki'),
('Parasita', 2019, 'Suspense', 'Bong Joon-ho'),
('O Poderoso Chefão', 1972, 'Crime', 'Francis Ford Coppola'),
('Pulp Fiction: Tempo de Violência', 1994, 'Neo-noir', 'Quentin Tarantino');

-- 3. CONSULTA PARA VERIFICAR OS DADOS

SELECT * FROM tb_filmes;
