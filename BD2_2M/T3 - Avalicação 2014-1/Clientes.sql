CREATE TABLE clientes (
	
	idCliente serial PRIMARY KEY, 
	cpf VARCHAR(20),
	nome VARCHAR(50) NOT NULL,
	endereco VARCHAR(100) NULL,
	idCidade INTEGER NULL,
	uf VARCHAR(02) NULL,
	cep VARCHAR(100),
	telefone VARCHAR(15),
	data_cadastro DATE,
	data_nascimento DATE

	CHECK (idCidade > 0)

);
ALTER TABLE clientes DROP COLUMN idCidade;
ALTER TABLE clientes ADD COLUMN nomeclientes_pk INTEGER;
SELECT * cidades

INSERT INTO cidades
(cpf, nome , endereco , idCidade , uf, cep, telefone, data_cadastro, data_nascimento) Values 
('124', 'andre' , 'geinian' , null , null, null, '12485454' , '12-23-2014', '12-23-2010');
('545', 'gemano' , 'geinian' , null , null, null, '12485' , '12-23-2014', '12-23-2000');
('121', 'cassadra' , 'geinian' , null , null, null, '12452544' , '12-23-2014', '12-23-2010');


SELECT * clientes;