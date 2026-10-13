CREATE TABLE tb_top_youtubers(
	cod_top_youtubers SERIAL PRIMARY KEY NOT NULL,
	rank INT NULL,
	youtuber VARCHAR(200) NULL,
	subcribers INT NULL,
	video_views INT NULL,
	video_count INT NULL,
	category VARCHAR (200) NULL,
	started INT NULL
);

DO $$
DECLARE
--1. declaração do cursor
--esse cursor é unbound por não ser associado a nenhuma query
cur_nomes_youtubers REFCURSOR;
--para armazenar o nome do youtuber a cada iteração
v_youtuber VARCHAR(200);
BEGIN
--2. abertura do cursor
OPEN cur_nomes_youtubers FOR
SELECT youtuber
FROM
tb_top_youtubers;
LOOP
--3. Recuperação dos dados de interesse
FETCH cur_nomes_youtubers INTO v_youtuber;
--FOUND é uma variável especial que indica
EXIT WHEN NOT FOUND;
RAISE NOTICE '%', v_youtuber;
END LOOP;
--4. Fechamento do cursos
CLOSE cur_nomes_youtubers;
END;
$$


-- SELECT * FROM tb_top_youtubers;

-- ALTER TABLE tb_top_youtubers
-- ALTER COLUMN video_views TYPE BIGINT;

-- CREATE TABLE tb_top_youtubers(
-- 	cod_top_youtubers SERIAL PRIMARY KEY,
-- 	rank INT,
-- 	youtuber VARCHAR(200) NULL,
-- 	subscribers INT NULL,
-- 	video_views INT NULL,
-- 	video_count INT NULL,
-- 	category VARCHAR(200),
-- 	started INT NULL
-- );