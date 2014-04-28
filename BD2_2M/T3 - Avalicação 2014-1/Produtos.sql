CREATE TABLE produtos (

	idProduto serial PRIMARY KEY, 
	nome VARCHAR(50) UNIQUE NOT NULL,
	unidade INTEGER, 
	quantidade INTEGER NOT NULL, 
	preco_unitario DOUBLE PRECISION, 
	estoque_minimo INTEGER,
	estoque_maximo INTEGER UNIQUE
	
	CHECK (estoque_minimo > 0)
)

SELECT * produtos;

ALTER TABLE produtos ALTER column quantidade type NUMERIC (12,2);
ALTER TABLE produtos ALTER column  preco_unitario typ INTEGER NOT NULL;