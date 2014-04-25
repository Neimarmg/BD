CREATE TABLE cidades (
	idCidade serial primary key,	
	nomeCidade varChar (200) not null,
	idUf integer not null,
	estado VarChar (100) not null,
	pais varChar (50) not null
)