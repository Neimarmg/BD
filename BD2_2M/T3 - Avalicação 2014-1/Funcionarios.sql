CREATE TABLE funcionarios (
	
	idFuncionario serial PRIMARY KEY,
	cpf VARCHAR(20),
	nome VARCHAR(50) NOT NULL,
	endereco VARCHAR(100) NOT NULL,
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