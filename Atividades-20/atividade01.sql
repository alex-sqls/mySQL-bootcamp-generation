-- Atividade 01
-- criando 
CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_funcionarios(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    departamento VARCHAR(255),
    idade INT(255),
    salario DECIMAL(7,2) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_funcionarios (nome, departamento, idade, salario) VALUES ("Alexandre", "Producao", 28, 1500.00);

INSERT INTO tb_funcionarios (nome, departamento, idade, salario) 
VALUES ("Sarah", "Gerente", 31, 3500.00);

INSERT INTO tb_funcionarios (nome, departamento, idade, salario) 
VALUES ("Vitoria", "Estoquista", 23, 2500.00);

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario <= 2000.00;
SELECT * FROM tb_funcionarios WHERE salario >= 2000.00;

UPDATE tb_funcionarios SET salario = 1800.00 WHERE id = 1;




