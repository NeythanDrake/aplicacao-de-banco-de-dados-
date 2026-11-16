SHOW databases
USE DB_T05429_NATHAN

CREATE TABLE PRODUCT (
    ID INT AUTO_INCREMENT PRIMARY KEY,
	NAME VARCHAR(128),
    CATEGORY VARCHAR(128),
    PRICE DECIMAL(10,2),
    STOCK INT
);
CREATE TABLE CUSTOMER (
    ID INT AUTO_INCREMENT PRIMARY KEY,
	NAME VARCHAR(128),
    AGE INT,
    CITY VARCHAR(40),
    EMAIL VARCHAR(40)
);
CREATE TABLE ORDER_TABLE (
    ID INT AUTO_INCREMENT PRIMARY KEY,
	CUSTOMER_NAME VARCHAR(128),
    PRODUCT_NAME VARCHAR(128),
    QUANTITY INT,
    TOTAL_VALUE DECIMAL(10,2)
);

INSERT INTO PRODUCT (NAME, CATEGORY, PRICE, STOCK) VALUES
('Notebook Dell Inspiron', 'Informática', 3599.90, 15),
('Mouse Sem Fio Logitech', 'Periféricos', 89.90, 120),
('Teclado Mecânico Redragon', 'Periféricos', 249.00, 60),
('Monitor LG 24 Polegadas', 'Monitores', 899.99, 25),
('Headset Gamer HyperX', 'Áudio', 329.50, 40);

INSERT INTO CUSTOMER (NAME, AGE, CITY, EMAIL) VALUES
('Ana Souza', 28, 'São Paulo', 'ana.souza@email.com'),
('Carlos Pereira', 35, 'Rio de Janeiro', 'carlos.pereira@email.com'),
('Mariana Lima', 42, 'Belo Horizonte', 'mariana.lima@email.com'),
('João Santos', 23, 'Curitiba', 'joao.santos@email.com'),
('Fernanda Alves', 31, 'Salvador', 'fernanda.alves@email.com');

INSERT INTO ORDER_TABLE (CUSTOMER_NAME, PRODUCT_NAME, QUANTITY, TOTAL_VALUE) VALUES
('Ana Souza', 'Notebook Dell Inspiron', 1, 3599.90),
('Carlos Pereira', 'Mouse Sem Fio Logitech', 2, 179.80),
('Mariana Lima', 'Teclado Mecânico Redragon', 1, 249.00),
('João Santos', 'Monitor LG 24 Polegadas', 2, 1799.98),
('Fernanda Alves', 'Headset Gamer HyperX', 3, 988.50);


INSERT INTO PRODUCT VALUES
(NULL, 'SSD Kingston 480GB', 'Armazenamento', 219.90, 80),
(NULL, 'Webcam Logitech C920', 'Periféricos', 449.00, 30),
(NULL, 'Cadeira Gamer ThunderX3', 'Móveis', 1299.00, 12),
(NULL, 'Impressora HP Deskjet', 'Impressoras', 579.90, 18),
(NULL, 'Roteador TP-Link AX1800', 'Redes', 389.90, 45);

INSERT INTO CUSTOMER VALUES
(NULL, 'Ricardo Nunes', 39, 'Porto Alegre', 'ricardo.nunes@email.com'),
(NULL, 'Patrícia Gomes', 27, 'Recife', 'patricia.gomes@email.com'),
(NULL, 'Lucas Ferreira', 33, 'Fortaleza', 'lucas.ferreira@email.com'),
(NULL, 'Beatriz Martins', 45, 'Brasília', 'beatriz.martins@email.com'),
(NULL, 'Eduardo Ribeiro', 29, 'Manaus', 'eduardo.ribeiro@email.com');

INSERT INTO ORDER_TABLE VALUES
(NULL, 'Ricardo Nunes', 'SSD Kingston 480GB', 2, 439.80),
(NULL, 'Patrícia Gomes', 'Webcam Logitech C920', 1, 449.00),
(NULL, 'Lucas Ferreira', 'Cadeira Gamer ThunderX3', 1, 1299.00),
(NULL, 'Beatriz Martins', 'Impressora HP Deskjet', 2, 1159.80),
(NULL, 'Eduardo Ribeiro', 'Roteador TP-Link AX1800', 3, 1169.70);

-- Consultas básicas --
SELECT * FROM PRODUCT
SELECT * FROM CUSTOMER
SELECT * FROM ORDER_TABLE

-- Ordenação --
SELECT * FROM PRODUCT ORDER BY PRICE DESC 
SELECT * FROM CUSTOMER ORDER BY AGE DESC

-- LIMIT --
SELECT * FROM PRODUCT LIMIT 5
SELECT * FROM CUSTOMER LIMIT 5

-- LIKE --
SELECT * FROM PRODUCT WHERE NAME LIKE 'Teclado%'
SELECT * FROM PRODUCT WHERE NAME LIKE '%Redragon'
SELECT * FROM PRODUCT WHERE NAME LIKE '%Cadeira%'
SELECT * FROM CUSTOMER WHERE NAME LIKE '__a%'

-- 