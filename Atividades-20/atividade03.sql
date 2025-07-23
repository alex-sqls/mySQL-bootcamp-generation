CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
	sexo VARCHAR(255),
	idade INT(255),
    nota DECIMAL(3,1) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_alunos (nome, sexo, idade, nota) 
VALUES ("juliano", "Masculino", 18, 5.0);

INSERT INTO tb_alunos (nome, sexo, idade, nota) 
VALUES ("Matheus", "Masculino", 17, 7.0);

INSERT INTO tb_alunos (nome, sexo, idade, nota) 
VALUES ("Alex", "Masculino", 19, 8.0);

INSERT INTO tb_alunos (nome, sexo, idade, nota) 
VALUES ("Sofia", "Feminino", 17, 9.0);

INSERT INTO tb_alunos (nome, sexo, idade, nota)
VALUES ("Juliana", "Feminino", 18, 9.0);

INSERT INTO tb_alunos (nome, sexo, idade, nota)
VALUES ("Vitoria", "Feminino", 20, 10.0);

INSERT INTO tb_alunos (nome, sexo, idade, nota)
VALUES ("Lucas", "Masculino", 20, 9.0);

INSERT INTO tb_alunos (nome, sexo, idade, nota) 
VALUES ("Kevin", "Masculino", 19, 6.0);

SELECT * FROM tb_alunos WHERE nota > 7.0;

SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET idade = 25 WHERE id = 6;
