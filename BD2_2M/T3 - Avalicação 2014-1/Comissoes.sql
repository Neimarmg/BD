CREATE TABLE comissoes (

	codigo_comissao serial PRIMARY KEY, 
	cpf_funcionario VARCHAR(20), 
	codigo_venda INTEGER, 
	comissao DOUBLE PRECISION
	
)

INSERT INTO (cpf_funcionario, codigo_venda, comissao) VALUES 
(121, 10,0);
(545, 2,0);
(124, 15,0);