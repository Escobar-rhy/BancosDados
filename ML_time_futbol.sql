CREATE TABLE "tb_times" (
	"id_time" SERIAL NOT NULL UNIQUE,
	"nome_time" VARCHAR(50) NOT NULL UNIQUE,
	"cidade" VARCHAR(20) NOT NULL,
	"estado" VARCHAR(2) NOT NULL,
	PRIMARY KEY("id_time")
);




CREATE TABLE "tb_resultados" (
	"id_res" SERIAL NOT NULL UNIQUE,
	"gols_t1" SMALLINT NOT NULL,
	"gols_t2" SMALLINT NOT NULL,
	"data" DATE NOT NULL,
	"hora" TIME NOT NULL,
	"fk_t1_id_time" SERIAL NOT NULL,
	"fk_t2_id_time" SERIAL NOT NULL,
	"fk_id_camp" SERIAL NOT NULL,
	PRIMARY KEY("id_res")
);




CREATE TABLE "tb_tipo_campeonatos" (
	"id_camp" SERIAL NOT NULL UNIQUE,
	"descricao" VARCHAR(500) NOT NULL,
	"abrangencia" VARCHAR(30) NOT NULL,
	PRIMARY KEY("id_camp")
);



ALTER TABLE "tb_resultados"
ADD FOREIGN KEY("fk_id_camp") REFERENCES "tb_tipo_campeonatos"("id_camp")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "tb_resultados"
ADD FOREIGN KEY("fk_t2_id_time") REFERENCES "tb_times"("id_time")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "tb_resultados"
ADD FOREIGN KEY("fk_t1_id_time") REFERENCES "tb_times"("id_time")
ON UPDATE NO ACTION ON DELETE NO ACTION;
