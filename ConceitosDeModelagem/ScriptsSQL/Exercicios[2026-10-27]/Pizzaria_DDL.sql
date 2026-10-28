--Exercício 4 — Pizzaria no SQL Server (continuação da Aula 04). 
--Usando o modelo lógico da Pizzaria do exercício 6 da Aula 04 e os tipos da tabela abaixo, 
--crie o banco Pizzaria com todas as tabelas (CLIENTE, TELEFONE_CLIENTE, ENTREGADOR, PIZZA, PEDIDO e ITEM_PEDIDO), 
--com todas as PKs, FKs e pelo menos um UNIQUE, um CHECK e um DEFAULT. 
--Salve o script como Pizzaria_DDL.sql: ele recebe dados na Aula 07.

CREATE DATABASE Pizzaria

USE Pizzaria

CREATE TABLE CLIENTE (
	cpf_cliente char(11) primary key,
	nome varchar(100) not null,
	rua varchar(100) not null,
	numero varchar(10) not null,
	bairro varchar(60) not null,
);

CREATE TABLE ENTREGADOR(
	matricula_entregador int primary key,
	nome varchar(100) not null,
	placa_moto char(7) not null,
);

CREATE TABLE PIZZA(
	codigo_pizza int primary key,
	sabor varchar(50),
	preco decimal(6,2)
);

ALTER TABLE PIZZA
ALTER COLUMN sabor VARCHAR(50) NOT NULL

ALTER TABLE PIZZA
ALTER COLUMN preco DECIMAL(6,2) NOT NULL

CREATE TABLE TELEFONE(
	id_telefone int primary key,
	cpf_cliente char(11) not null,

	CONSTRAINT fk_telefone_cliente FOREIGN KEY (cpf_cliente)
	REFERENCES CLIENTE (cpf_cliente)
);

