CREATE TABLE produtos (

	idProduto serial PRIMARY KEY, 
	nome VARCHAR(50) UNIQUE NOT NULL,
	unidade VARCHAR, 
	quantidade INTEGER NOT NULL, 
	preco_unitario DOUBLE PRECISION, 
	estoque_minimo INTEGER,
	estoque_maximo INTEGER UNIQUE
	
	CHECK (estoque_minimo > 0)
)

SELECT * produtos;

ALTER TABLE produtos ALTER column quantidade type NUMERIC (12,2);
ALTER TABLE produtos ALTER column  preco_unitario typ INTEGER NOT NULL;

INSERT INTO produtos (nome, unidade, quantidade, preco_unitario, estoque_minimo, estoque_maximo) VALUES 
('leite', 'cx', 10, 1,20, 20, 500)
('leite', 'cx', 10, 2,01, 10, 800)
('leite', 'cx', 12, 1,15, 20, 100)