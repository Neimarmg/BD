
-- Exe 20

CREATE VIEW vendasDoCliente AS (
	SELECT 
		vendas.cpf_cliente, 
		SUM((vendas_itens.quantidade_item * produtos.preco_unitario)) AS Total_venda_do_cliente
	
	FROM (vendas_itens INNER JOIN produtos ON vendas_itens.codigo_produto = produtos.idProduto) 
		and vendas_itens INNER JOIN codigo_venda ON vendas_itens.codigo_venda = vendas.codigo_venda
	
	GROUP BY vendas.cpf_cliente;
)