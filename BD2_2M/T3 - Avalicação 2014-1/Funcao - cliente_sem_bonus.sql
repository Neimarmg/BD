
CREATE TABLE clientes (
	
	idCliente serial PRIMARY KEY, 
	cpf VARCHAR(20),
	nome VARCHAR(50) NOT NULL,
	endereco VARCHAR(100) NULL,
	idCidade INTEGER NULL,
	uf VARCHAR(02) NULL,
	cep VARCHAR(100),
	telefone VARCHAR(15),
	data_cadastro DATE,
	data_nascimento DATE,

	CHECK (idCidade > 0),
	
	CONSTANT FKIdCidades FOREIGN key idCidade REFERENCES cidades(idCidade)
	
);

CREATE TABLE bonus {
	codigo_bonus serial PRIMARY KEY, 
	codigo_bonus INTEGER, 
	cpf_cliente INTEGER, 
	codigo_venda INTEGER, 
	bonus DOUBLE PRECISION
)


-- Exe 18

CREATE or replace FUNCTION get_cliente_sem_bonus() RETURNS TABLE (
nome VARCHAR (15),
idCliente INTEGER) AS $$
BEGIN
RETURN 
	QUERY SELECT INTO FROM *clientes outer left Join clientes.clientes = null,  
		
		bonus.codigo_bonus
		
		FROM clientes,bonus 
		WHERE bonus.idCliente = 0;

RETURN $$;
END;
$$ LANGUAGE 'plpgsql'

SELECT * FROM get_cliente_sem_bonus();