CREATE DATABASE Pedidos1;

USE Pedidos1;

CREATE TABLE tb_Pedidos (
  NumeroPedido INT AUTO_INCREMENT PRIMARY KEY,
  Status VARCHAR(255) NOT NULL,
  DataEntrega DATE
);

DROP TABLE tb_Pedidos;

INSERT INTO tb_pedidos (Status, DataEntrega) VALUES ('Pendente', NULL);
INSERT INTO tb_pedidos (Status, DataEntrega) VALUES ('Entregue', '2023-10-15');
INSERT INTO tb_pedidos (Status, DataEntrega) VALUES ('Entregue', '2023-10-10');

CREATE VIEW vw_Pedidos_Pendentes AS
SELECT NumeroPedido, status
FROM tb_Pedidos
WHERE status = 'Pendente' AND DataEntrega IS NULL;

SELECT * FROM vw_pedidos_pendentes;