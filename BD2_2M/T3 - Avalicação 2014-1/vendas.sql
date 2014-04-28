CREATE TABLE vendas (

	idVenda serial PRIMARY KEY, 
	data_venda DATE, 
	cpf_cliente VARCHAR, 
	cpf_funcionario VARCHAR
	
)

SELECT * vendas;

INs


CREATE TABLE vendas_itens (

	codigo_item serial PRIMARY KEY, 
	codigo_venda INTEGER, 
	codigo_produto INTEGER, 
	quantidade_item INTEGER
)

SELECT * itens_venda;


