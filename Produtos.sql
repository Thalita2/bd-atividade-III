CREATE DATABASE Produtos1;

USE Produtos1;

CREATE TABLE Produtos (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  NomeProduto VARCHAR(100) NOT NULL,
  Preco DECIMAL(10, 2) NOT NULL
);

INSERT INTO Produtos (NomeProduto, Preco) VALUES ('Teclado', 90.00);
INSERT INTO Produtos (NomeProduto, Preco) VALUES ('Cadeira', 120.50);
INSERT INTO Produtos (NomeProduto, Preco) VALUES ('Caderno', 80.25);

CREATE VIEW vw_Produtos_Caros AS
SELECT NomeProduto, Preco
FROM Produtos
WHERE Preco > 100;

SELECT * FROM vw_Produtos_Caros;
