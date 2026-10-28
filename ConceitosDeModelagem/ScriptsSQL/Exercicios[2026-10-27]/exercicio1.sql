--Exercícios

--Exercício 1 — Qual comando DDL usar? Para cada situação, diga qual comando resolve (CREATE, ALTER ou DROP) e com qual complemento:

--Criar o banco Loja.
CREATE DATABASE Loja;

--Criar a tabela PRODUTO.
CREATE TABLE PRODUTO(
--Guardar o estoque do produto, que ninguém lembrou de colocar.
ALTER TABLE produto ADD estoque INT
--O nome do produto não cabe em VARCHAR(50); precisa de VARCHAR(100).
ALTER TABLE produto ALTER COLUMN nome VARCHAR(100)

--Impedir preço negativo numa tabela que já existe.
ALTER TABLE produto ADD CONSTRAINT ck_preco_negativo CHECK (preco >= 0)

--A coluna observacao não é mais usada.
ALTER TABLE PRODUTO DROP COLUMN observacao

--A tabela PRODUTO inteira não é mais necessária.
DROP TABLE PRODUTO


