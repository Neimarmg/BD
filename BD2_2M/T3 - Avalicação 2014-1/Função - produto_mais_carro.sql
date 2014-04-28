
-- Exe 15

CREATE or replace FUNCTION get_produto_mais_carro() RETURNS TABLE (
nomeProduto VARCHAR (15),
preco DOUBLE (10,2)) AS $$
BEGIN
RETURN 
	QUERY SELECT INTO
		produtos.nome, 
		MAX(produtos.preco_unitario)
		FROM produtos 
        
RETURN $$;
END;
$$ LANGUAGE 'plpgsql'

SELECT * FROM get_produto_mais_carro();