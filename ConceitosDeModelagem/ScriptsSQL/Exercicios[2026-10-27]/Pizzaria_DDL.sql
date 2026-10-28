--Exercício 4 — Pizzaria no SQL Server (continuação da Aula 04). 
--Usando o modelo lógico da Pizzaria do exercício 6 da Aula 04 e os tipos da tabela abaixo, 
--crie o banco Pizzaria com todas as tabelas (CLIENTE, TELEFONE_CLIENTE, ENTREGADOR, PIZZA, PEDIDO e ITEM_PEDIDO), 
--com todas as PKs, FKs e pelo menos um UNIQUE, um CHECK e um DEFAULT. 
--Salve o script como Pizzaria_DDL.sql: ele recebe dados na Aula 07.

--| Tabela | Coluna(s) | Tipo |
--| --- | --- | --- |
--| CLIENTE | cpf | CHAR(11) |
--| CLIENTE | nome, rua | VARCHAR(100) |
--| CLIENTE | numero | VARCHAR(10) |
--| CLIENTE | bairro | VARCHAR(60) |
--| TELEFONE_CLIENTE | telefone | VARCHAR(15) |
--| ENTREGADOR | matricula | INT |
--| ENTREGADOR | nome | VARCHAR(100) |
--| ENTREGADOR | placa_moto | CHAR(7) |
--| PIZZA | codigo | INT |
--| PIZZA | sabor | VARCHAR(50) |
--| PIZZA | preco | DECIMAL(6,2) |
--| PEDIDO | numero | INT |
--| PEDIDO | data | DATE |
--| PEDIDO | hora | TIME |
--| ITEM_PEDIDO | quantidade | TINYINT |

--As colunas de FK usam o mesmo tipo da PK que referenciam.

CREATE DATABASE Pizzaria;
GO

USE Pizzaria;

CREATE TABLE CLIENTE(
   cpf_cliente char(11) primary key,
   nome varchar(100) not null,
   rua varchar(100) not null,
   numero varchar(10) not null,
   bairro varchar(70) not null
);


CREATE TABLE ENTREGADOR (
    matricula  INT    PRIMARY KEY,
    nome       VARCHAR(100) NOT NULL,
    placa_moto CHAR(7)      NOT NULL,   
    CONSTRAINT UQ_ENTREGADOR_placa UNIQUE (placa_moto)
);

CREATE TABLE PIZZA (
    codigo INT   PRIMARY KEY,
    sabor  VARCHAR(50)  NOT NULL,
    preco  DECIMAL(6,2) NOT NULL   
    --nao aceitamos sabores repetidos.
    CONSTRAINT UQ_PIZZA_sabor UNIQUE (sabor),
    CONSTRAINT CK_PIZZA_preco CHECK (preco > 0)
);


CREATE TABLE TELEFONE_CLIENTE (
    cpf_cliente CHAR(11) PRIMARY KEY,
    telefone    VARCHAR(15) NOT NULL  
    CONSTRAINT FK_TELEFONE_CLIENTE 
    FOREIGN KEY (cpf_cliente) REFERENCES CLIENTE (cpf_cliente)
);

CREATE TABLE PEDIDO (
    numero               INT     PRIMARY KEY,
    data_pedido          DATE     NOT NULL,
    hora                 TIME     NOT NULL,
    cpf_cliente          CHAR(11) NOT NULL,
    matricula_entregador INT      NOT NULL,
  
    CONSTRAINT FK_PEDIDO_CLIENTE 
         FOREIGN KEY (cpf_cliente) REFERENCES CLIENTE (cpf_cliente),
    CONSTRAINT FK_PEDIDO_ENTREGADOR
        FOREIGN KEY (matricula_entregador) REFERENCES ENTREGADOR (matricula)
);


CREATE TABLE ITEM_PEDIDO (
    numero_pedido INT     NOT NULL PRIMARY KEY,
    codigo_pizza  INT     NOT NULL,
    quantidade    TINYINT NOT NULL,
    CONSTRAINT CK_ITEM_quantidade CHECK (quantidade >= 1),
    CONSTRAINT FK_ITEM_PEDIDO FOREIGN KEY (numero_pedido) REFERENCES PEDIDO (numero),
    CONSTRAINT FK_ITEM_PIZZA FOREIGN KEY (codigo_pizza) REFERENCES PIZZA (codigo)
);