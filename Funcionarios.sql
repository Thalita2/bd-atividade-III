CREATE DATABASE Funcionarios1;

DROP DATABASE Funcionarios1;

USE Funcionarios1;

CREATE TABLE tb_funcionarios(
IdFucionarios INT AUTO_INCREMENT PRIMARY KEY,
NomeFuncionario VARCHAR(255) NOT NULL,
Cargo VARCHAR(50) NOT NULL,
Departamento VARCHAR(50) NOT NULL
);

INSERT INTO tb_funcionarios (NomeFuncionario, Cargo, Departamento) VALUES ('Fernando Santos', 'Motorista', 'Logistíca');
INSERT INTO tb_funcionarios (NomeFuncionario, Cargo, Departamento) VALUES ('João Silva', 'Administrador', 'Administrativo');
INSERT INTO tb_funcionarios (NomeFuncionario, Cargo, Departamento) VALUES ('Clara Santana', 'Analista de Dados', 'TI');

CREATE VIEW vw_Funcionarios_Departamento AS
SELECT NomeFuncionario, Cargo
FROM tb_Funcionarios
WHERE Departamento = 'Administrativo';

SELECT * FROM vw_Funcionarios_Departamento;

