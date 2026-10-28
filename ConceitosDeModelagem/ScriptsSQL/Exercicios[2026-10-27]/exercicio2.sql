/*Exercício 2 — Encontre os erros. O script abaixo tem 5 erros. Encontre e corrija:*/

CREATE TABLE PRODUTO (
    codigo INT NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    CONSTRAINT PK_PRODUTO PRIMARY KEY (codigo)
);
CREATE TABLE VENDA (
    numero INT PRIMARY KEY,
    codigo_produto INT NOT NULL,
    CONSTRAINT FK_VENDA_PRODUTO FOREIGN KEY (codigo_produto) REFERENCES PRODUTO (codigo)
);

