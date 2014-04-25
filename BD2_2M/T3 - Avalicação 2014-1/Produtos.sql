CREATE TABLE produtos {
	idProduto serial PRIMARY KEY, 
	nome VARCHAR (50) NOT NULL,
	unidade INTEGER, 
	quantidade INTEGER NOT NULL, 
	preco_unitario DOUBLE, 
	estoque_minimo INTEGER
)

SELECT * produtos;