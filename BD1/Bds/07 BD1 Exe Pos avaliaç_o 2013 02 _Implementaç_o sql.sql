
IMPLEMENTAÇÃO DO BANDO DE DADOS 07 BD1 Prova 01 2013 02

-- ===============================================================================
-- SISTEMA I
-- ===============================================================================

CREATE TABLE fonecedores(
	idFornecedor primary key,
	nomeFornecedor VARCHAR(40) UNIQUE,
	idCidade INTEGER not null,
	fone1 varChar (15) null,
	fone2 varChar (15) null,	
	CHECK(
	idCidade > 0	
	),
	FOREIGN KEY(idCidade) REFERENCES cidades(idCidade) 
)
INSERT INTO produtos (idFornecedor,nomeProduto,idCidade,fone1,fone2) values ('100','ABC inf','1','(51)3030-2020','(51)9999-7777');
INSERT INTO produtos (idFornecedor,nomeProduto,idCidade,fone1,fone2) values('200','XYZ comp','1','(11)4040-5050','');
INSERT INTO produtos (idFornecedor,nomeProduto,idCidade,fone1,fone2) values('300','kkk','1','','');

alter table fonecedores add column fone3 character  default '' null;
UPDATE fonecedores set fone3 ='(11)5050-6060' where fonecedores.idFornecedor = 100;

delete from produtos
WHERE idFornecedor  IN (SELECT idFornecedor  FROM produtos WHERE idFornecedor = 100 )RETURNING *;  

delete from fonecedores WHERE idFornecedor WHERE idFornecedor = 100 )RETURNING *;  

--========================================================================

CREATE TABLE contatos(
	idContato serial primary key,
	idFornecedor integer REFERENCES fonecedores ON DELETE CASCADE,
	nroTelefone VARCHAR(12),
	CHECK(
		idFornecedor > 0 
	),
	FOREIGN KEY(idFornecedor) REFERENCES fonecedores(idFornecedor),
)
--========================================================================
CREATE TABLE produtos(
	idProduto primary key,
	nomeProduto  VARCHAR(40) UNIQUE,
	idFornecedor integer  REFERENCES fonecedores ON DELETE CASCADE,
	idCategoriaProduto INTEGER null REFERENCES categoriaProduto ON DELETE CASCADE,,
	descObs VARCHAR (100) not null,	
	qtEstoque NUMERIC null,
	CHECK(
	idCategoriaProduto > 0	
	),
	FOREIGN KEY(idCategoriaProduto) REFERENCES categoriaProduto(idCategoriaProduto) 
)

INSERT INTO produtos (idProduto,nomeProduto,idFornecedor,qtsEtoque,idCategoriaProduto) values (1,'teclado','',100,10);
																							  (2,'Mause',100,200,10);
UPDATE produtos set nomeProduto = 'teclado abnt' where produtos.idProduto = 1;
UPDATE produtos set qtEstoque = qtEstoque - 3 where produtos.idProduto = 1;
UPDATE produtos set idFornecedor = 100 where produtos.idProduto = 2;
UPDATE produto set idFornecedor = '' where produtos.idProduto = 1;

delete from preco WHERE idPreco  IN (SELECT idPreco  FROM preco WHERE idPreco = 00 )RETURNING *; 
delete from produtos WHERE idProduto = 100 )RETURNING *; 

--========================================================================
CREATE TABLE preco(
	idPreco primary key,
	idProduto integer REFERENCES produtos ON DELETE CASCADE,
	valorProduto DECIMAL(15,2) NOT NULL,
	statusPreco BOOLEAN, -- Sim, Não 
	CHECK(
	idProduto > 0 and
	valorProduto > 0 
	),
	FOREIGN KEY(idProduto) REFERENCES produtos(idProduto) 
)

INSERT into (idPreco,valorProduto,idProduto) values (1,80.99,1);
													(2,25.99,2);
UPDATE preco set valorProduto = '75,99' where produtos.idPreco = 1;

delete from preco WHERE idPreco WHERE idPreco = 1 )RETURNING *; 

--========================================================================
CREATE TABLE categoriaProduto(
	idCategoriaProduto primary key,
	descricaoCategoria VARCHAR(100) not null UNIQUE
)

INSERT INTO produtos (idCategoriaProduto,descricaoCategoria) values ('10','Informatica');
DELETE from categoriaProduto 
 
delete from produtos WHERE idProduto  IN (SELECT idProduto  FROM produtos WHERE idProduto = 1 )RETURNING *;  
delete from categoriaProduto where idCategoriaProduto = 10 )RETURNING *; 

--========================================================================

CREATE TABLE cidades(
idCidade serial primary key,
nomeCidade VARCHAR(40) UNIQUE,
uf VARCHAR(2) not null,
descricao VARCHAR(100) not null	
)
