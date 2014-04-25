CREATE TABLE clientes {
	idCliente serial PRIMARY KEY, 
	nomeCliente VARCHAR (50) not null,
	cpf VARCHAR (20),
	telefone VARCHAR (15),
	idCidade INTEGER not null,
	endereco varChar (100) NOT NULL,
	cep varChar (100),
	data_cadastro DATE,
	data_nascimento DATE

	CHECK(	
		idCidade > 0
	),	
	CONSTRAINTS fk_clientes FOREIGN KEY (idCidade) REFERENCES cidades(idCidade)
)

SELECT * clientes;