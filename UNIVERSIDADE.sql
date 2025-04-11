DROP DATABASE IF EXISTS UNI;
CREATE DATABASE uni;
use uni;

CREATE TABLE alunos (
	mat INT NOT NULL primary KEY,
    nome varchar(35),
    endereco varchar(30),
    cidade varchar(25)
);

	CREATE TABLE disciplinas(
		cod_disc varchar(10) NOT NULL PRIMARY KEY,
        nome_disc varchar(40),
        carga_hor int
    );
    
    CREATE TABLE professores(
		cod_prof INT NOT NULL PRIMARY KEY ,
		nome VARCHAR(35),
        endereco VARCHAR(30),
        cidade VARCHAR(25)
    );
    
    CREATE TABLE turma(
		cod_disc VARCHAR(10) NOT NULL PRIMARY KEY ,
        cod_turma INT NOT NULL PRIMARY KEY,
        cod_prof INT NOT NULL PRIMARY KEY ,
        ano YEAR ,
        horario TIME
		FOREIGN KEY (codigo_produto) REFERENCES produto(codigo_produto), 
		FOREIGN KEY (numero_nota) REFERENCES venda(numero_nota)
    );