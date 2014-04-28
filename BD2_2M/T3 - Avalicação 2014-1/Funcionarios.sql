CREATE TABLE funcionarios (
	
	idFuncionario serial PRIMARY KEY,
	cpf VARCHAR(20),
	nome VARCHAR(50) NOT NULL,
	endereco VARCHAR(100) NULL,
	idCidade INTEGER NULL,
	uf VARCHAR(02) NOT NULL,
	cep VARCHAR(09),
	telefone VARCHAR(15),
	data_admissao DATE,
	data_nascimento DATE,

	CHECK (	
		idCidade > 0),
	
	CONSTANT FKIdCidades FOREIGN key idCidade REFERENCES cidades(idCidade)
)

SELECT * funcionarios;

INSERT INTO funcionarios(cpf, nome, endereco, idCidade, uf, cep, telefone, data_admissao, data_nascimento )VALUES
( '122', 'neimar', 'pedrada', null, null, null, '5655666', '01-20-2014', '01-20'1998' );
( '455', 'anderesom', 'cartola', null, null, null, '565565', '01-20-2011', '01-20'1990' );						
( '125', 'joela', 'cabreita', null, null, null, '56554454', '01-20-2011', '01-20'1995' );