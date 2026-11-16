USE DB_T05429_NATHAN;

CREATE TABLE NOVEL (
    ID INT AUTO_INCREMENT PRIMARY KEY,
	NAME VARCHAR(128),
    YEAR YEAR NOT NULL,
    GENRE VARCHAR(30),
    AUDIENCE INT NOT NULL
);
ALTER TABLE NOVEL
modify COLUMN GENRE VARCHAR(100);
CREATE TABLE ACTOR (
    ACTOR_ID INT AUTO_INCREMENT PRIMARY KEY,
	NAME VARCHAR(100),
    AGE INT NOT NULL,
    CHAR_NAME VARCHAR(50),
    SALARY FLOAT NOT NULL
);
CREATE TABLE BROADCASTER (
    BR_ID INT AUTO_INCREMENT PRIMARY KEY,
	NAME VARCHAR(100),
    COUNTRY VARCHAR(50),
    FOUNDATION_YEAR YEAR NOT NULL
);
SHOW TABLES
-- PARTE 3 ------------------------------------
INSERT INTO NOVEL( NAME, YEAR, GENRE, AUDIENCE)
VALUES ('Rei do Gado', 1996, 'Telenovela', 55 ),
('Avenida Brasil', 2012, 'Drama', 39 ),
('Os Dez Mandamentos', 2015, 'Novela Bíblica', 21 ),
('Carrossel', 2012, 'Infantojuvenil', 12 ),
('Vidas em Jogo', 2011, 'Drama', 10 )
select * from NOVEL

INSERT INTO ACTOR( NAME, AGE, CHAR_NAME, SALARY)
VALUES ('Adriana Esteves', 42, 'Carminha', 1500000.00 ),
('Guilherme Winter', 36, 'Moisés', 50000 ),
('Larissa Manoela', 11, 'Maria Joaquina', 300000 ),
('Guilherme Berenguer', 30, 'Francisco Moraes', 100000 );
select * from ACTOR

INSERT INTO BROADCASTER( NAME, COUNTRY, FOUNDATION_YEAR)
VALUES('GLOBO', 'BRASIL', 1965),
('RECORD', 'BRASIL', 1953),
('SBT', 'BRASIL', 1981)
SELECT * FROM BROADCASTER
-- PARTE 3 ----------------------------------------
-- PARTE 4 ----------------------------------------
INSERT INTO NOVEL
VALUES(null,'Êta Mundo Bom!', 2016, 'Comédia Romântica', 27 ),
(null,'Tieta', 1989,'Comédia dramática', 63 ),
(null,'Mulheres de Areia', 1993,'Melodrama', 49 ),
(null,'Chocolate com Pimenta', 2003, 'Comédia Romântica', 35 ),
(null,'Caminho das Indias', 2009, 'Drama/Romance', 40 )

INSERT INTO ACTOR
VALUES(null,'Sergio Guizé', 36, 'Candinho', 1.2000000 ),
(null,'Claudia Ohana', 26, 'Tieta', 100000 ),
(null,'Gloria Pires', 29, 'Ruth e Raquel', 280.500 ),
(null,'Mariana Ximenes', 22, 'Aninha', 400.600 )
(null,'Juliana Paes', 30, 'Maya', 160.0000.00 )

INSERT INTO BROADCASTER
VALUES(null,'TV TUPI', 'BRASIL', 1950),  
(null,'TV Excelsior', 'BRASIL', 1960),
(null,'Rede Manchete', 'BRASIL', 1983),
(null,'TV Cultura', 'BRASIL', 1960)
(null,'Bandeirantes', 'BRASIL', 1967)
-- PARTE 4 ----------------------------------------

-- PARTE 5 ----------------------------------------
SELECT * FROM NOVEL
SELECT * FROM ACTOR
SELECT * FROM BROADCASTER

SELECT NAME, YEAR FROM NOVEL
SELECT NAME, GENRE FROM NOVEL
SELECT NAME, AGE FROM ACTOR
SELECT NAME, SALARY FROM ACTOR
SELECT NAME FROM BROADCASTER

SELECT * FROM NOVEL ORDER BY YEAR ASC
SELECT * FROM ACTOR ORDER BY AGE ASC
SELECT * FROM BROADCASTER ORDER BY FOUNDATION_YEAR ASC
-- PARTE 5 ----------------------------------------

-- PARTE 5 ----------------------------------------

-- PARTE 5 ----------------------------------------