CREATE DATABASE RelacionamentoCli;

USE RelacionamentoCli;

CREATE TABLE tb_Clientes (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  NomeCliente VARCHAR(255) NOT NULL
);

CREATE TABLE tb_Vendedores (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  NomeVendedor VARCHAR(255) NOT NULL
);

INSERT INTO tb_Clientes (NomeCliente) VALUES ('João');
INSERT INTO tb_Clientes (NomeCliente) VALUES ('Maria');
INSERT INTO tb_Clientes (NomeCliente) VALUES ('Fernando');

INSERT INTO tb_Vendedores (NomeVendedor) VALUES ('Júlia');
INSERT INTO tb_Vendedores (NomeVendedor) VALUES ('Marcos');
INSERT INTO tb_Vendedores (NomeVendedor) VALUES ('Joaquim');

CREATE VIEW vw_Relacionamento_Clientes_Vendedores AS
SELECT c.NomeCliente AS Clientes, v.NomeVendedor AS Vendedores
FROM tb_Clientes c
JOIN tb_Vendedores v ON c.id = v.id;

SELECT * FROM vw_Relacionamento_Clientes_Vendedores;

