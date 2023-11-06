CREATE DATABASE Estoque1;

USE Estoque1;

CREATE TABLE tb_Estoque(
IdEstoque INT AUTO_INCREMENT PRIMARY KEY,
NomeProduto VARCHAR(100) NOT NULL,
QuantidadeEstoque INT NOT NULL
);

DROP TABLE tb_Estoque; 

INSERT INTO tb_Estoque(NomeProduto, QuantidadeEstoque) VALUES ('Notebook', 4);
INSERT INTO tb_Estoque(NomeProduto, QuantidadeEstoque) VALUES ('Smartphone', 15);
INSERT INTO tb_Estoque(NomeProduto, QuantidadeEstoque) VALUES ('Tablet', 20);


CREATE VIEW vw_Estoque_Insuficiente AS 
SELECT NomeProduto, QuantidadeEstoque
FROM tb_Estoque
WHERE QuantidadeEstoque < 5;

SELECT * FROM vw_Estoque_Insuficiente;
