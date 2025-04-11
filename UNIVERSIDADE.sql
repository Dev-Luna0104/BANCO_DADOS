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
		cod_disc VARCHAR(10) ,
        cod_turma INT NOT NULL PRIMARY KEY,
        cod_prof INT,
        ano YEAR NOT NULL PRIMARY KEY,
        horario TIME,
		FOREIGN KEY (cod_disc) REFERENCES disciplinas(cod_disc), 
		FOREIGN KEY (cod_prof) REFERENCES professores(cod_prof)
    );
    
    