
-- Exe 9
CREATE VIEW cliente_bonus AS (
	SELECT 
		vendas.cpf_cliente, 
		bonus.codigo_bonus,
		SUM((vendas_itens.quantidade_item * produtos.preco_unitario)*bonus.bonus/100)) AS Bonus_Total_Clinte
	
	FROM (((vendas_itens INNER JOIN produtos ON vendas_itens.codigo_produto = produtos.idProduto)) and
		(vendas_itens INNER JOIN codigo_venda ON vendas_itens.codigo_venda = vendas.codigo_venda)) and
		INNER JOIN vendas ( vendas INNER JOIN bonus ON vendas.cpf_cliente = bonus.cpf_cliente) ON vendas_itens.codigo_venda = vendas.codigo_venda
	
	GROUP BY vendas.cpf_cliente;
)

