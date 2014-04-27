CREATE TABLE vendas (

	idVenda serial PRIMARY KEY, 
	data_venda DATE, 
	cpf_cliente VARCHAR, 
	cpf_funcionario VARCHAR
	
)

SELECT * vendas;