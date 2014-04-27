CREATE TABLE cidades (

	idCidade serial PRIMARY KEY,	
	nomeCidade VARCHAR(200) NOT NULL,
	idUf INTEGER NOT NULL,
	estado VARCHAR (100) NOT NULL,
	pais VARCHAR(50) NOT NULL
	
)