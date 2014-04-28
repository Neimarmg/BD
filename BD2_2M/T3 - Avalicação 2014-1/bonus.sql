
CREATE TABLE bonus {
	codigo_bonus serial PRIMARY KEY, 
	codigo_bonus INTEGER,
	idCliente INTEGER,
	cpf_cliente INTEGER, 
	codigo_venda INTEGER, 
	bonus DOUBLE PRECISION
)

INSERT INTO bonus (idCliente, cpf_cliente, codigo_venda, bonus) VALUES 
(1, 124, 1, 10,2)