CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
	tipo VARCHAR(255),
    quantidade INT(255),
    preco DECIMAL(7,2) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos (nome, tipo, quantidade, preco) 
VALUES ("Brigadeiro", "Doce", 20, 4.00);

INSERT INTO tb_produtos (nome, tipo, quantidade, preco) 
VALUES ("Brownie", "Doce", 35, 7.00);

INSERT INTO tb_produtos (nome, tipo, quantidade, preco) 
VALUES ("Coxinha", "Salgado", 70, 10.00);

INSERT INTO tb_produtos (nome, tipo, quantidade, preco) 
VALUES ("Bolo de Casamento", "Doce", 5, 700.00);

INSERT INTO tb_produtos (nome, tipo, quantidade, preco) 
VALUES ("Bolo de Aniversario", "Doce", 15, 650.00);

INSERT INTO tb_produtos (nome, tipo, quantidade, preco) 
VALUES ("Kit de doces", "Doce", 36, 550.00);

INSERT INTO tb_produtos (nome, tipo, quantidade, preco) 
VALUES ("Esfiha", "Salgado", 48, 4.50);

INSERT INTO tb_produtos (nome, tipo, quantidade, preco) 
VALUES ("Churros", "Doce", 80, 5.00);

SELECT * FROM tb_produtos WHERE preco <= 500.00;

SELECT * FROM tb_produtos WHERE preco >= 500.00;

UPDATE tb_produtos SET quantidade = 2 WHERE id = 3;

