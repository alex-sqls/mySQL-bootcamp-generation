CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id bigint AUTO_INCREMENT PRIMARY KEY,
     tipoPizza varchar(255) NOT NULL,
     classePizza VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias(tipoPizza, classePizza)
values ("Doce", "tradicional"); 

INSERT INTO tb_categorias(tipoPizza, classePizza)
values ("salgada", "tradicional"); 

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
	id bigint AUTO_INCREMENT PRIMARY KEY,
	nome varchar(255) NOT NULL,
	tamanho VARCHAR(255) NOT NULL,
    preco DECIMAL(5,2),
    tipoID bigint,
    CONSTRAINT fk_classe FOREIGN KEY ( tipoID ) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas(nome, tamanho, preco, tipoID)
values ("Margherita", "media", 25.00, 2); 

INSERT INTO tb_pizzas(nome, tamanho, preco, tipoID)
values ("portuguesa", "grande", 50.00, 2);

INSERT INTO tb_pizzas(nome, tamanho, preco, tipoID)
values ("toscana", "pequena", 15.00, 2);

INSERT INTO tb_pizzas(nome, tamanho, preco, tipoID)
values ("pizza de brigadeiro", "media" "tradicional", 60.00, 1);

INSERT INTO tb_pizzas(nome, tamanho, preco, tipoID)
values ("pizza de nutella", "grande" "tradicional", 110.00, 1);

INSERT INTO tb_pizzas(nome, tamanho, preco, tipoID)
values ("calabresa", "grande" "tradicional", 120.00, 2);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT nome, tamanho, preco, tipoPizza from tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.tipoID = tb_categorias.id;

SELECT nome, tamanho, preco, tipoPizza from tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.tipoID = tb_categorias.id WHERE tb_categorias.tipoPizza = "doce";  




