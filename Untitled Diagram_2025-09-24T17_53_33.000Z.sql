CREATE TABLE "tb_produtos" (
	"cod_produto" SERIAL NOT NULL UNIQUE,
	"descricao" VARCHAR(100) NOT NULL,
	"preco" NUMERIC(10,2) NOT NULL,
	"qtd_estoque" INTEGER NOT NULL,
	"tipo_produto" VARCHAR(80) NOT NULL,
	"fk_cod_categoria" INTEGER NOT NULL,
	PRIMARY KEY("cod_produto")
);




CREATE TABLE "tb_categoria" (
	"cod_categoria" SERIAL NOT NULL UNIQUE,
	"nome_categoria" VARCHAR(80) NOT NULL UNIQUE,
	PRIMARY KEY("cod_categoria")
);



ALTER TABLE "tb_produtos"
ADD FOREIGN KEY("fk_cod_categoria") REFERENCES "tb_categoria"("cod_categoria")
ON UPDATE NO ACTION ON DELETE NO ACTION;