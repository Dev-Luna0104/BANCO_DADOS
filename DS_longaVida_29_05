
drop database if exists longavida ;
CREATE DATABASE longavida;
use longavida;

create table plano(
	sigla varchar(2) not null primary key ,
	descri varchar(30),
    valor decimal(10,2) not null
);

insert into plano (sigla, descri, valor) values
("B1","Básico 1", 200.00),
("B2","Básico 2",150.00),
("B3","Básico 3",100.00),
("E1","Executivo 1",350.00),
("E2","Executivo 2",300.00),
("E3","Executivo 3",250.00),
("M1","Master 1",500.00),
("M2","Master 2",450.00),
("M3","Master 3",400.00);

-- /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/

create table associado(
	codigo integer auto_increment not null primary key,
    plano varchar(2) not null,
    nome varchar(40) not null,
    endereco varchar(35),
    cidade varchar(20),
    estado varchar(2),
    cep varchar(9)
);

INSERT INTO Associado (plano, nome, endereco, cidade, estado, cep) VALUES
('B1', 'PEDRO JOSE DE OLIVEIRA', 'RUA DAS FLORES, 25', 'SÃO PAULO', 'SP', '01234-010'),
('B1', 'MARIA DO CARMO', 'AV. BRASIL, 145', 'DIADEMA', 'SP', '09950-120'),
('B2', 'JOÃO SILVA', 'RUA VERDE, 45', 'SÃO PAULO', 'SP', '01345-060'),
('B2', 'LUCIA HELENA SOUSA', 'AV. AZUL, 50', 'BARUERI', 'SP', '06454-000'),
('B3', 'MARCOS VINICIUS AMARAL', 'RUA A, 10', 'COTIA', 'SP', '06754-100'),
('E1', 'PAULA CRISTINA', 'RUA B, 200', 'SANTO ANDRE', 'SP', '09050-300'),
('E1', 'FERNANDO AMARAL', 'RUA C, 80', 'SÃO PAULO', 'SP', '01200-000'),
('E2', 'ANA CAROLINA', 'AV. CIDADE JARDIM, 99', 'DIADEMA', 'SP', '09910-220'),
('E2', 'RAFAEL DA SILVA', 'RUA CEDRO, 22', 'SANTO ANDRE', 'SP', '09060-400'),
('E3', 'MARIANA ALVES', 'RUA JACARÉ, 33', 'BARUERI', 'SP', '06400-999'),
('M1', 'LUIZ HENRIQUE', 'RUA X, 55', 'SÃO PAULO', 'SP', '01230-765'),
('M1', 'JORGE COSTA', 'AV. CENTRAL, 80', 'BARUERI', 'SP', '06401-010'),
('M2', 'CRISTINA OLIVEIRA', 'RUA A, 10', 'SÃO PAULO', 'SP', '01222-111'),
('M2', 'FABIO AMARAL', 'RUA DO CAMPO, 22', 'COTIA', 'SP', '06700-000'),
('M3', 'TANIA REGINA', 'RUA CASTRO ALVES, 60', 'SÃO PAULO', 'SP', '01240-050'),
('M3', 'FERNANDA LIMA', 'AV. PAULISTA, 1000', 'SANTO ANDRE', 'SP', '09070-100'),
('B1', 'CARLOS EDUARDO', 'RUA DAS MARGARIDAS, 88', 'DIADEMA', 'SP', '09999-999'),
('E3', 'THAIS MENDES', 'RUA DO BOSQUE, 150', 'COTIA', 'SP', '06705-000'),
('B3', 'RICARDO SOUSA', 'RUA DAS LARANJEIRAS, 11', 'SANTO ANDRE', 'SP', '09011-111'),
('M1', 'SUELI AMARAL', 'RUA DAS PALMEIRAS, 42', 'SÃO PAULO', 'SP', '01250-222');
