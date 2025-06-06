DROP DATABASE IF EXISTS longavida;
CREATE DATABASE longavida;
USE longavida;

CREATE TABLE plano (
    sigla VARCHAR(2) NOT NULL PRIMARY KEY,
    descri VARCHAR(30),
    valor DECIMAL(10,2) NOT NULL
);

INSERT INTO plano (sigla, descri, valor) VALUES
('B1', 'Básico 1', 200.00),
('B2', 'Básico 2', 150.00),
('B3', 'Básico 3', 100.00),
('E1', 'Executivo 1', 350.00),
('E2', 'Executivo 2', 300.00),
('E3', 'Executivo 3', 250.00),
('M1', 'Master 1', 500.00),
('M2', 'Master 2', 450.00),
('M3', 'Master 3', 400.00);

CREATE TABLE associado (
    codigo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    plano VARCHAR(2) NOT NULL,
    nome VARCHAR(40) NOT NULL,
    endereco VARCHAR(35),
    cidade VARCHAR(20),
    estado VARCHAR(2),
    cep VARCHAR(9)
);

INSERT INTO associado (plano, nome, endereco, cidade, estado, cep) VALUES
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

SELECT a.nome, a.plano, p.descri, p.valor FROM associado a 
JOIN plano p ON a.plano = p.sigla;

SELECT COUNT(*) AS total_b1 FROM associado 
WHERE plano = 'B1';

SELECT a.nome, a.plano, p.valor FROM associado a 
JOIN plano p ON a.plano = p.sigla;

SELECT * FROM associado WHERE cidade IN ('COTIA', 'DIADEMA');

SELECT a.nome, a.plano, p.valor FROM associado a 
JOIN plano p ON a.plano = p.sigla WHERE a.cidade = 'BARUERI' AND a.plano = 'M1';

SELECT a.nome, a.plano, p.valor FROM associado a
JOIN plano p ON a.plano = p.sigla WHERE a.cidade = 'SÃO PAULO';

SELECT * FROM associado a JOIN plano p ON a.plano = p.sigla 
WHERE a.nome LIKE '%SILVA%';

UPDATE plano SET valor = valor * 1.10 WHERE sigla LIKE 'B%';
UPDATE plano SET valor = valor * 1.05 WHERE sigla LIKE 'E%';
UPDATE plano SET valor = valor * 1.03 WHERE sigla LIKE 'M%';

UPDATE associado SET plano = 'E3' WHERE nome = 'PEDRO JOSE DE OLIVEIRA';

SELECT COUNT(*) AS total_e3 FROM associado WHERE plano = 'E3';

SELECT a.nome, p.valor FROM associado a 
JOIN plano p ON a.plano = p.sigla WHERE a.plano IN ('B1', 'E1', 'M1');

SELECT MAX(valor) AS maior_valor, MIN(valor) AS menor_valor FROM plano;

SELECT * FROM associado a JOIN plano p ON a.plano = p.sigla 
WHERE p.descri LIKE 'Executivo%';

SELECT * FROM associado a JOIN plano p ON a.plano = p.sigla 
WHERE p.descri LIKE 'Básico%' OR p.descri LIKE 'Master%';

DELETE FROM associado WHERE cidade = 'SANTO ANDRE';

SELECT a.nome, a.plano, p.valor FROM associado a 
JOIN plano p ON a.plano = p.sigla WHERE a.cidade = 'SÃO PAULO' 
AND a.plano IN ('M2', 'M3') ORDER BY a.nome;

SELECT * FROM associado a 
JOIN plano p ON a.plano = p.sigla ORDER BY p.descri;

SELECT a.nome, a.plano, p.descri FROM associado a 
JOIN plano p ON a.plano = p.sigla ORDER BY p.descri ASC, a.nome DESC;

SELECT * FROM associado a JOIN plano p ON a.plano = p.sigla 
WHERE p.descri NOT LIKE 'Master%';

SELECT a.nome, p.descri FROM associado a 
JOIN plano p ON a.plano = p.sigla ORDER BY a.nome;

SELECT * FROM plano WHERE valor BETWEEN 300 AND 500;

SELECT a.nome, a.plano, p.descri, p.valor FROM associado a 
JOIN plano p ON a.plano = p.sigla WHERE a.nome LIKE '%AMARAL%';

SELECT * FROM associado WHERE cidade = 'DIADEMA';
UPDATE plano SET valor = valor * 1.06 WHERE sigla LIKE 'M%';

SELECT * FROM associado WHERE cep LIKE '09%';
