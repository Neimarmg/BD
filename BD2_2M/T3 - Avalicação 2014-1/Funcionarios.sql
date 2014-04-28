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
	data_nascimento DATE

	CHECK (	
		idCidade > 0)
	
)

SELECT * funcionarios;

INSERT INTO funcionarios(cpf, nome, endereco, idCidade, uf, cep, telefone, data_admissao, data_nascimento )VALUES
( '122', 'neimar', 'pedrada', null, null, nulll, '5655666', '01-20-2014', '01-20'1998' );
( '454545', 'anderesom', 'cartola', null, null, nulll, '565565', '01-20-2011', '01-20'1990' );						
( '124512', 'joela', 'cabreita', null, null, nulll, '56554454', '01-20-2011', '01-20'1995' );