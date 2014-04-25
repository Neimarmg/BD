CREATE TABLE Itens_venda {
	codigo_item serial PRIMARY KEY, 
	codigo_venda INTEGER, 
	codigo_produto INTEGER, 
	quantidade_item INTEGER
)

SELECT * Itens_venda;