USE master;
GO
--DELETAR BANCO INTEIRO
--DROP DATABASE Vendas;
--GO

--Criar um novo BANCO
--CREATE DATABASE Vendas;
--GO

--Criando uma tabela.

--IMPORTANTE,
-->os scripts abaixo vao rodar no banco de vendas.
USE Vendas;
GO

-- DROP TABLE CLIENTE

--not null (Obrigatorio)
CREATE TABLE Cliente(
   id_cliente int  primary key,
   nome varchar(50) not null,
   sobrenome varchar(150) not null
);
GO

--CONSTRAINT (Restricao) nome TIPO_RESTRICAO (COLUNA)
   -- REFERENCES TABELA (COLUNA)

CREATE TABLE Pedido
(
  id_pedido int primary key,
  id_cliente int not null,
  valor decimal(10,2) not null,
  descricao varchar(200),
  --restricao nome_da_restricao FK        --coluna que representa FK
  CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente)
  REFERENCES Cliente(id_cliente)
  --referencia do FK Tabela (coluna)
);

---COMANDO PARA CONFERIR A ESTRUTURA
EXEC sp_help 'PEDIDO';


--ADICIONA UMA COLUNA na tabela CLiente que ja existe.
ALTER TABLE Cliente ADD Email varchar(100);

	

