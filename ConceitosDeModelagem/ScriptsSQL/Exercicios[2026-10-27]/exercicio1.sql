--Exercícios

--Exercício 1 — Qual comando DDL usar? Para cada situação, diga qual comando resolve (CREATE, ALTER ou DROP) e com qual complemento:

--Criar o banco Loja.
CREATE DATABASE Loja;

--Criar a tabela PRODUTO.
CREATE TABLE PRODUTO(
--Guardar o estoque do produto, que ninguém lembrou de colocar.
 id_produto int primary key,
--O nome do produto não cabe em VARCHAR(50); precisa de VARCHAR(100).
nome_produto varchar(100),
preco decimal(10, 2) not null,
observacao varchar(250),
--Impedir preço negativo numa tabela que já existe.
CONSTRAINT ck_produto_preco CHECK (preco < 0)
);
--A coluna observacao não é mais usada.
ALTER TABLE PRODUTO DROP COLUMN observacao
--A tabela PRODUTO inteira não é mais necessária.
--DROP TABLE PRODUTO


