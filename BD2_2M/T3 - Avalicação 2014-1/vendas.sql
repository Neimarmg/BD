CREATE TABLE vendas (

	idVenda serial PRIMARY KEY, 
	data_venda DATE, 
	idCliente INTEGER,
	cpf_cliente VARCHAR, 
	cpf_funcionario VARCHAR
	
)

SELECT * vendas;

INSERT INTO (data_venda, cpf_cliente, cpf_funcionario) VALUES
('12-01-2014',1,'124', '125')
('12-02-2014',2,'545', '125')
('12-01-2011',2,'124', '125')

CREATE TABLE vendas_itens (
