-- Exe 17

CREATE or replace FUNCTION get_cliente_mais_atigo() RETURNS TABLE (
nome VARCHAR (15),
data_cadastro DATE) AS $$
BEGIN
RETURN 
	QUERY SELECT INTO
		clientes.nome,
		MIN(clientes.data_cadastro)
		FROM clientes        
RETURN $$;
END;
$$ LANGUAGE 'plpgsql'

SELECT * FROM get_cliente_mais_atigo();
