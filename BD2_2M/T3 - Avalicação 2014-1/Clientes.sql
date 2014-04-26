CREATE TABLE clientes {
	idCliente serial PRIMARY KEY, 
	cpf VARCHAR (20),
	nome VARCHAR (50) NOT NULL,
	endereco VARCHAR (100) NOT NULL,
	idCidade INTEGER NOT NULL,
	uf VARCHAR (02) NOT NULL,
	cep VARCHAR(100),
	telefone VARCHAR (15),
	data_cadastro DATE,
	data_nascimento DATE

	CHECK (	
		idCidade > 0
	),
	
	CONSTRAINTS fk_clientes FOREIGN KEY (idCidade) REFERENCES cidades(idCidade)
	
)

SELECT * clientes;