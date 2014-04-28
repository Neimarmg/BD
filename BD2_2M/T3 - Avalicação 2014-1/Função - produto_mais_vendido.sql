-- Exe 19

CREATE or replace FUNCTION get_produto_mais_vendido() RETURNS TABLE (
cod INTEGER,
nome VARCHAR (15),
totalVenda DATE) AS $$
BEGIN
RETURN 
	QUERY SELECT INTO
		produtos.codigo_produto,
		produtos.nome,
		MAX(SUM(vendas_itens.quantidade_item))
		FROM vendas_itens, vendas, produtos        
RETURN $$;
END;
$$ LANGUAGE 'plpgsql'

SELECT * FROM get_produto_mais_vendido();