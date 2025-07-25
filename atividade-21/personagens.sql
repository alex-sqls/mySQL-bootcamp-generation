CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id bigint AUTO_INCREMENT PRIMARY KEY,
    tipoclasse VARCHAR(255) NOT NULL
);

INSERT INTO tb_classe(tipoclasse)
values ("tanque"); 

INSERT INTO tb_classe(tipoclasse)
values ("Guerreito"); 

INSERT INTO tb_classe(tipoclasse)
values ("Estrategista"); 

INSERT INTO tb_classe(tipoclasse)
values ("Assassino"); 

INSERT INTO tb_classe(tipoclasse)
values ("Mago"); 

SELECT * FROM tb_classe;

CREATE TABLE tb_personagens(
    id bigint AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ataque INT(255) NOT NULL,
    defesa INT(255) NOT NULL,
    inteligencia INT(255) NOT NULL,
    classeID BIGINT(255),
    CONSTRAINT fk_classe FOREIGN KEY ( classeID ) REFERENCES tb_classe(id)
);

INSERT INTO tb_personagens(nome, ataque, defesa, inteligencia, classeID)
values ("sr Robin",700, 100, 500, 2); 

INSERT INTO tb_personagens(nome, ataque, defesa, inteligencia, classeID)
values ("sr MOMON",600, 700, 800, 1); 

INSERT INTO tb_personagens(nome, ataque, defesa, inteligencia, classeID)
values ("Cocytus",600, 100, 400, 1); 

INSERT INTO tb_personagens(nome, ataque, defesa, inteligencia, classeID)
values ("Demiurge",300, 900, 950, 2); 

INSERT INTO tb_personagens(nome, ataque, defesa, inteligencia, classeID)
values ("sr corvo",950, 150, 700, 4); 

INSERT INTO tb_personagens(nome, ataque, defesa, inteligencia, classeID)
values ("Shaltear",990, 500, 300, 1); 

INSERT INTO tb_personagens(nome, ataque, defesa, inteligencia, classeID)
values ("Mare bello fiore",700, 200, 600, 5); 

INSERT INTO tb_personagens(nome, ataque, defesa, inteligencia, classeID)
values ("Albedo",500, 100, 1000, 3); 

select * FROM tb_personagens WHERE ataque > 200;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 500 AND 900;
SELECT * FROM tb_personagens where nome LIKE "%c%";

SELECT nome, ataque, defesa, inteligencia, tipoclasse from tb_personagens INNER JOIN tb_classe
ON tb_personagens.classeID = tb_classe.id; 

SELECT nome, ataque, defesa, inteligencia, tipoclasse from tb_personagens INNER JOIN tb_classe
ON tb_personagens.classeID = tb_classe.id WHERE tb_classe.tipoclasse = "tanque";

