-- Exe 10

CREATE VIEW comissaoes_funcionarios AS (
	SELECT 
		funcionarios.nome,		
		SUM((vendas_itens.quantidade_item * produtos.preco_unitario)*comissoes.comissao/100) AS Total_comissao_funcionario
	
	FROM ((vendas_itens INNER JOIN produtos ON vendas_itens.codigo_produto = produtos.idProduto) 
		 and vendas_itens INNER JOIN codigo_venda ON vendas_itens.codigo_venda = vendas.codigo_venda) 
		 and vendas_itens INNER JOIN ( vendas INNER JOIN vendas.codigo_comissao = comissoes.codigo_comissao) ON
		 vendas_itens INNER JOIN vendas_itens.codigo_produto = vendas.codigo_venda
	
	GROUP BY funcionarios.nome;
)