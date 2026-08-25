-- 1 Exercícios
-- Para os exercícios que não especifiquem intervalos explicitamente, considere os seguintes
-- intervalos.
-- Números inteiros: [1, 100]
-- Números reais: [1, 10]


-- 1.1 Faça um programa que gere um valor inteiro e o exiba.

DO $$
DECLARE 
	n INTEGER;
BEGIN 
	n:= floor(random()*(100 - 1 + 1) + 1)::int;
RAISE NOTICE 'O número inteiro gerado foi: %',n;
END $$;

-- 1.2. Faça um programa que gere um valor real e o exiba.

DO $$
DECLARE
	n NUMERIC(5,2);
BEGIN
	n := random() * (10 - 1 + 1) + 1;
	RAISE NOTICE 'O número real gerado foi: %', n;
END $$;

-- 1.3 Faça um programa que gere um valor real no intervalo [20, 30] que representa uma
-- temperatura em graus Celsius. Faça a conversão para Fahrenheit e exiba.

DO $$
DECLARE 
	c NUMERIC (5,2);
	f NUMERIC (5,2);
BEGIN 
	c := random() * (30 - 20 + 1) + 20;
	f := (c * 9/5) + 32;
	RAISE NOTICE ' A conversão em fahrenheit do valor real gerado (% celsius) é: %',c,f;
END $$;

--1.4 Faça um programa que gere três valores reais a, b, e c e mostre o valor de delta: aquele
--que calculamos para chegar às potenciais raízes de uma equação do segundo grau.

DO $$
DECLARE 
	a NUMERIC (6,2);
	b NUMERIC (6,2);
	c NUMERIC (6,2);
	d NUMERIC (10,2);
BEGIN 
	a := random() * (10 - 1 + 1) + 1;
	b := random() * (10 - 1 + 1) + 1;
	c := random() * (10 - 1 + 1) + 1;
	d := b^2 - 4*a*c;
	RAISE NOTICE 'Os valores de a, b e c são respectivamente: %, %, %. O valor de delta é igual a: %',a,b,c,d;
END $$;

--1.5 Faça um programa que gere um número inteiro e mostre a raiz cúbica de seu antecessor
--e a raiz quadrada de seu sucessor.

DO $$
DECLARE 
	n INTEGER;
	a INTEGER;
	s INTEGER;
	r2 NUMERIC (6,2);
	r3 NUMERIC (6,2);
BEGIN 
	n := floor(random() * (100 - 1 + 1) + 1)::int;
	a := n - 1;
	s := n + 1;
	r2 := |/ s;
	r3 := ||/ a;
	RAISE NOTICE 'O número gerado é: %. A raiz cúbica do antecessor é igual a: %. A raiz quadrada do sucessor é igual a: %', n, r3, r2;
END $$;

-- 1.6 Faça um programa que gere medidas reais de um terreno retangular. Gere também um
-- valor real no intervalo [60, 70] que representa o preço por metro quadrado. O programa deve
-- exibir o valor total do terreno.

DO $$
DECLARE
    l NUMERIC(6,2);
    c NUMERIC(6,2);
    p NUMERIC(6,2);
    a NUMERIC(10,2);
    v NUMERIC(12,2);
BEGIN
    l := random() * (10 - 1) + 1;
    c := random() * (10 - 1) + 1;
    p := random() * (70 - 60) + 60;

    a := l * c;
    v := a * p;

    RAISE NOTICE 'Largura: %, Comprimento: %, Área: % m²', l, c, a;
    RAISE NOTICE 'Preço por m²: R$%, Valor total: R$%', p, v;
END $$;

--1.7 Escreva um programa que gere um inteiro que representa o ano de nascimento de uma
--pessoa no intervalo [1980, 2000] e gere um inteiro que representa o ano atual no intervalo
--[2010, 2020]. O programa deve exibir a idade da pessoa em anos. Desconsidere detalhes
--envolvendo dias, meses, anos bissextos etc.

DO $$
DECLARE
    ano_nascimento INTEGER;
    ano_atual INTEGER;
    idade INTEGER;
BEGIN
    ano_nascimento := floor(random() * (2000 - 1980 + 1) + 1980)::int;
    ano_atual := floor(random() * (2020 - 2010 + 1) + 2010)::int;

    idade := ano_atual - ano_nascimento;

    RAISE NOTICE 'Nascido em %, no ano de % essa pessoa tem % anos', ano_nascimento, ano_atual, idade;
END $$;

-----------------------------------------------------------------------------------------------
-- -- variáveis
--  DO $$
--  DECLARE
--  	n1 NUMERIC (5,2);
-- 	N2 INTEGER;
-- 	limite_inferior INTEGER := 5;
-- 	limite_superior INTEGER := 17;
-- BEGIN 
-- 	-- 0<= n1 < 1
-- 	n1 := random();
-- 	RAISE NOTICE '%', n1;
-- 	n1 := random() * 10 + 1;
-- 	RAISE NOTICE '%', n1;
-- 	n2 := floor(randon() * 10 + 1):: INT;
-- 	RAISE NOTICE '%',n2;
-- 	n2 := floor(randon() * 17 + 5)::INT;
	
-- END;
-- $$

---------------------------------------------------------------------------------------------------

-- -- variáveis
--  DO $$
--  DECLARE
--  	n1 NUMERIC (5,2);
-- 	N2 INTEGER;
-- 	limite_inferior INTEGER := 5;
-- 	limite_superior INTEGER := 17;
-- BEGIN 
-- 	-- 0<= n1 < 1
-- 	n1 := random () * 10;
-- 	RAISE NOTICE '%', n1;
-- END;
-- $$

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
 