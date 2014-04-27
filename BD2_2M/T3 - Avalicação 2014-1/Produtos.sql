CREATE TABLE produtos (

	idProduto serial PRIMARY KEY, 
	nome VARCHAR(50) UNIQUE NOT NULL,
	unidade INTEGER, 
	quantidade INTEGER NOT NULL, 
	preco_unitario DOUBLE, 
	estoque_minimo INTEGER,
	estoque_maximo INTEGER UNIQUE
	
)

SELECT * produtos;

ALTER TABLE produtos ALTER column quantidade type NUMERIC (12,2);