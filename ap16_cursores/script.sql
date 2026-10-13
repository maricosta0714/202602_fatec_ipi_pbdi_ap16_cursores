-- CURSOR NÃO VINCULADO DE QUERY DINAMICA
-- Exibindo nomes de youtubers que começaram a partir de um ano específico
DO $$
DECLARE
--1. declaração do cursor
--esse cursor é unbound por não ser associado a nenhuma query
cur_nomes_youtubers REFCURSOR;
--para armazenar o nome do youtuber a cada iteração
v_youtuber VARCHAR(200);
	--1. Declaração
	cur_nomes_a_partir_de REFCURSOR;
	v_youtuber VARCHAR(200);
	v_ano INT := 2008;
	v_nome_tabela VARCHAR(200) := 'tb_top_youtubers';
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
	--2. Abertura do Cursos
	OPEN cur_nomes_a_partir_de FOR EXECUTE /*EXECUTE é parte da query dinamica*/
	format('
			SELECT youtuber FROM %s
			WHERE started >= $1
	',
			v_nome_tabela 
	)
	USING v_ano;

	LOOP
	--3. Recuperação de dados
	FETCH cur_nomes_a_partir_de INTO v_youtuber;
	EXIT WHEN NOT FOUND;
	RAISE NOTICE '%', v_youtuber;
	END LOOP;
	--4. Fechar o cursor
	CLOSE cur_nomes_a_partir_de;
END;
$$

-- DO $$
-- DECLARE
-- --1. declaração do cursor
-- --esse cursor é unbound por não ser associado a nenhuma query
-- cur_nomes_youtubers REFCURSOR;
-- --para armazenar o nome do youtuber a cada iteração
-- v_youtuber VARCHAR(200);
-- BEGIN
-- --2. abertura do cursor
-- OPEN cur_nomes_youtubers FOR
-- SELECT youtuber
-- FROM
-- tb_top_youtubers;
-- LOOP
-- --3. Recuperação dos dados de interesse
-- FETCH cur_nomes_youtubers INTO v_youtuber;
-- --FOUND é uma variável especial que indica
-- EXIT WHEN NOT FOUND;
-- RAISE NOTICE '%', v_youtuber;
-- END LOOP;
-- --4. Fechamento do cursos
-- CLOSE cur_nomes_youtubers;
-- END;
-- $$
