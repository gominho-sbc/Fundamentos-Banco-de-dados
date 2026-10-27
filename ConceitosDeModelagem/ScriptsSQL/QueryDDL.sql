--USE master;
--GO

--DELETAR O BANCO DE DADOS
--DROP DATABASE Vendas;
--GO

-- CRIAR BANCO DE DADOS
CREATE DATABASE Vendas;
GO -- (Separando um trecho de código para executar.

USE Vendas;
GO

/*
	CREATE TABLE NOME_DA_TABELA(
		nome_da_coluna tipo,
		nome_da_outra_coluna tipo
	);
*/
CREATE TABLE Cliente (
	id_cliente int NOT NULL,
	nome varchar(50) NOT NULL,
	sobrenome varchar(150) NOT NULL
);

-- Deletar a tabela inteira
--DROP TABLE Cliente;


-- Para criar a chave estrangeira colocar os paramentros abaixo
-- CONSTRAINT nome_chave_estrangeira FOREIGN KEY (nome_coluna_tabela_primaria) REFERENCES nome_tabela_primaria(nome_coluna_primaria)

CREATE TABLE Pedido
(
	id_pedido int primary key,
	id_cliente int not null,
	valor decimal(10,2) not null,
	descricao varchar(200),
	CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente)
	REFERENCES Cliente(id_cliente)

);

-- COMANDO PARA CONFERIR A ESTRUTURA
EXEC sp_help 'PEDIDO';

--ADICIONA UMA COLUNA
ALTER TABLE Cliente ADD Email varchar(100);