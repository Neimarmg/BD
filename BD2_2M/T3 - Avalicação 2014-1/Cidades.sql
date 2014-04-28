CREATE TABLE cidades (

	idCidade serial PRIMARY KEY,	
	nomeCidade VARCHAR(200) NOT NULL,
	idUf INTEGER NOT NULL,
	estado VARCHAR (100) NOT NULL,
	pais VARCHAR(50) NOT NULL
	
)

SELECT * cidades

INSERT INTO cidades
(idCidade, nomeCidade , uf , estado , pais) Values 
											(1, 'Porto alegre' , 'rs' , 'rio grande do sul' , 'Brasil');
											(2, 'Canoas' , 'rs' , 'rio grande do sul' , 'Brasil');
											(3, 'Viamão' , 'rs' , 'rio grande do sul' , 'Brasil');
