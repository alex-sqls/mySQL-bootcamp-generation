CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
	id bigint AUTO_INCREMENT PRIMARY KEY,
	categoria_carne varchar(255) NOT NULL,
	tipo_carne VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias(categoria_carne, tipo_carne)
values ("Carne bovina", "carne magra"); 

INSERT INTO tb_categorias(categoria_carne, tipo_carne)
values ("carne suina", "carne gorda"); 

INSERT INTO tb_categorias(categoria_carne, tipo_carne)
values ("carne de aves", "carne magra"); 

INSERT INTO tb_categorias(categoria_carne, tipo_carne)
values ("carne peixe", "carne magra"); 

INSERT INTO tb_categorias(categoria_carne, tipo_carne)
values ("carne cordeiro", "carne gorda"); 

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	peso DOUBLE(3,2) NOT NULL,
    preco DECIMAL(5,2),
    quantidade INT(255),
    tipoID BIGINT,
    CONSTRAINT fk_classe FOREIGN KEY ( tipoID ) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(nome, peso, preco, quantidade, tipoID)
values ("patinho", 2.4, 75.00, 5, 1); 

INSERT INTO tb_produtos(nome, peso, preco, quantidade, tipoID)
values ("bacon", 2.4, 75.00, 5, 2); 

INSERT INTO tb_produtos(nome, peso, preco, quantidade, tipoID)
values ("peito de frango", 5.8, 35.00, 15, 3); 

INSERT INTO tb_produtos(nome, peso, preco, quantidade, tipoID)
values ("Atum", 5.8, 45.00, 25, 4); 

INSERT INTO tb_produtos(nome, peso, preco, quantidade, tipoID)
values ("paleta de cordeiro", 7.00, 80.00, 50, 5); 

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%c%';

SELECT nome, peso, preco, quantidade, categoria_carne from tb_produtos INNER JOIN tb_categorias
ON tb_produtos.tipoID = tb_categorias.id;

SELECT nome, peso, preco, quantidade, categoria_carne from tb_produtos INNER JOIN tb_categorias
ON tb_produtos.tipoID = tb_categorias.id WHERE tb_categorias.categoria_carne = "carne de aves";
 