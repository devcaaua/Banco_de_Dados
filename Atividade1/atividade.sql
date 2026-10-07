CREATE DATABASE Controle_Compras

USE Controle_Compras;

CREATE TABLE cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(100) NOT NULL, 
    data_entrada DATE NOT NULL
);

CREATE TABLE produto(
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(19, 2) NOT NULL,
    data_entrada DATE NOT NULL
);

CREATE TABLE compra(
    id_compra INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    qtd_vendida INT NOT NULL,
    valor INT NOT NULL,
    data_entrada DATE NOT NULL
);

USE Controle_Compras;

INSERT INTO cliente(id_cliente, nome_cliente, email, telefone, data_entrada)
VALUES(1, "leandro", "leandro@gmail.com", "11 26480-777", "1970-10-22");

INSERT INTO cliente(id_cliente, nome_cliente, email, telefone, data_entrada)
VALUES(2, "italo", "italo@gmail.com", "11 24693-9169", "1980-01 09");

INSERT INTO cliente(id_cliente, nome_cliente, email, telefone, data_entrada)
VALUES(3, "matias", "matias@gmail.com", "11 47559-2582", "1990-06-30");

USE Controle_Compras;

INSERT INTO produto(id_produto, nome_produto, preco, data_entrada)
VALUES(1, "Iphone 18", 8000.00, "2026-10-01");

INSERT INTO produto(id_produto, nome_produto, preco, data_entrada)
VALUES(2, "Iphone 17", 5000.00, "2025-07-05");

INSERT INTO produto(id_produto, nome_produto, preco, data_entrada)
VALUES(3, "Iphone 16", 4000.00, "2024-09-17");

SELECT * FROM produto;

USE Controle_Compras;

INSERT INTO compra(id_compra, id_cliente, id_produto, qtd_vendida, valor, data_entrada)
VALUES(1, 1, 1, 10, 5000.00, "2025-10-05");

INSERT INTO compra(id_compra, id_cliente, id_produto, qtd_vendida, valor, data_entrada)
VALUES(2, 2, 2, 15, 2500.93, "2024-10-23");

INSERT INTO compra(id_compra, id_cliente, id_produto, qtd_vendida, valor, data_entrada)
VALUES(3, 3, 3, 5, 16000.38, "2026-09-01");

SELECT * FROM compra;

<-- update e delete -->

USE empresa;

INSERT INTO produto(id_produto, nome_produto, preco, data_entrada)
VALUES(4, "Iphone 15", 3000.00, "2025-10-05");

UPDATE produto
SET preco = 6000.00
WHERE id_produto = 4;

DELETE FROM produto
WHERE id_produto = 4;