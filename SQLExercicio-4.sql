**Exercício 4 — Pizzaria com dados (continuação da Aula 06).** No banco Pizzaria, escreva o script **Pizzaria_DML.sql** com:

1. Pelo menos 5 clientes (um deles com CPF começando com 0), 2 telefones para pelo menos 2 clientes, 3 entregadores e 6 pizzas.
2. Pelo menos 8 pedidos em datas diferentes, com 1 a 3 itens cada. Deixe pelo menos **um cliente sem pedido** e **uma pizza que nunca foi pedida** (vamos usar isso na Aula 09).
3. Um UPDATE que aumenta em 10% o preço de todas as pizzas.
4. Um DELETE que cancela um pedido inteiro (itens e pedido).

use pizzaria



SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE';
