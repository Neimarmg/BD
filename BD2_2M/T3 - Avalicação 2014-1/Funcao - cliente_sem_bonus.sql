
-- Exe 18

CREATE or replace FUNCTION get_cliente_sem_bonus() RETURNS TABLE (
nome VARCHAR (15),
idCliente INTEGER) AS $$
BEGIN
RETURN 
	QUERY SELECT INTO FROM *clientes outer left Join bonus ON clientes.clientes = bonus.idCliente, 
		SELECT INTO FROM *clientes outer left Join bonus ON bonus.codigo_bonus = null,
		
		WHERE bonus.idCliente = null;
	????? 
RETURN $$;
END;
$$ LANGUAGE 'plpgsql'

SELECT * FROM get_cliente_sem_bonus();