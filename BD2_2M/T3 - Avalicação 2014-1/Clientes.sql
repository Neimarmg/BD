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
	data_nascimento DATE,

	CHECK (idCidade > 0),
	
	CONSTANT FKIdCidades FOREIGN key idCidade REFERENCES cidades(idCidade)
	
);
ALTER TABLE clientes DROP COLUMN idCliente;
ALTER TABLE clientes ADD COLUMN nomeclientes_pk INTEGER;
ALTER TABLE clientes ALTER clientes2;
ALTER TABLE clientes2 ALTER clientesTYPE;
SELECT * cidades

INSERT INTO cidades
(cpf, nome , endereco , idCidade , uf, cep, telefone, data_cadastro, data_nascimento) Values 
('124', 'andre' , 'geinian' , 1 , 'rs', null, '12485454' , '12-23-2014', '12-23-2010');
('545', 'gemano' , 'geinian' , 5 , 'bh', null, '12485' , '12-23-2014', '12-23-2000');
('121', 'cassadra' , 'geinian' , 8 , 'rs' , null, null, '12452544' , '12-23-2014', '12-23-2010');


SELECT * clientes;