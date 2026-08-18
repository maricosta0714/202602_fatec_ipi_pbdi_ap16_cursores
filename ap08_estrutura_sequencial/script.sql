
-- variáveis
 DO $$
 DECLARE
 	n1 NUMERIC (5,2);
	N2 INTEGER;
	limite_inferior INTEGER := 5;
	limite_superior INTEGER := 17;
BEGIN 
	-- 0<= n1 < 1
	n1 := random();
	RAISE NOTICE '%', n1;
	n1 := random() * 10 + 1;
	RAISE NOTICE '%', n1;
	n2 := floor(randon() * 10 + 1):: INT;
	RAISE NOTICE '%',n2;
	n2 := floor(randon() * 17 + 5)::INT;
	
END;
$$

---------------------------------------------------------------------------------------------------

-- variáveis
 DO $$
 DECLARE
 	n1 NUMERIC (5,2);
	N2 INTEGER;
	limite_inferior INTEGER := 5;
	limite_superior INTEGER := 17;
BEGIN 
	-- 0<= n1 < 1
	n1 := random () * 10;
	RAISE NOTICE '%', n1;
END;
$$

----------------------------------------------------------------------------------------------------

-- -- variáveis
--  DO $$
--  DECLARE
--  	n1 NUMERIC (5,2);
-- 	N2 INTEGER;
-- 	limite_inferior INTEGER := 5;
-- 	limite_superior INTEGER := 17;
-- BEGIN 
-- 	-- 0<= n1 < 1
-- 	n1 := random ();
-- 	RAISE NOTICE '%', n1;
-- END;
-- $$

------------------------------------------------------------------------------------------------------

-- -- variáveis
-- DO $$
-- DECLARE
-- 	codigo INTEGER :=1;
-- 	nome_completo VARCHAR(200) := 'Jõao Santos';
-- 	salario NUMERIC (11,2) := 20.5;
-- BEGIN
-- 	RAISE NOTICE 'Meu código é %, me chamo % e meu salário é R$%', codigo, nome_completo, salario;
-- END;
-- $$

------------------------------------------------------------------------------------------------

-- DO $$
-- BEGIN
-- 	RAISE NOTICE '% + % = %', 2, 5, 2 + 5;
-- END;
-- $$
-- DO
-- $$

-----------------------------------------------------------------------------------------------------

-- BEGIN
-- 	RAISE NOTICE 'Meu primeiro bloquinho anônimo';
-- END;
-- $$
 