/*
**Exercício 3 — ALTER TABLE.** No banco Escola, escreva os comandos para:

1. Adicionar a coluna **cpf** CHAR(11) NULL em ALUNO.
2. Garantir que o cpf do aluno não se repita.
3. Aumentar o nome do curso para VARCHAR(120).
4. Garantir que a data_nascimento do aluno seja menor que a data de hoje.
5. Remover a coluna cpf.
*/

CREATE DATABASE BancoEscola;

USE BancoEscola;

CREATE TABLE ALUNO (
	id_aluno int primary key

);

ALTER TABLE ALUNO 
ADD cpf varchar(15) not null;

ALTER TABLE ALUNO
ADD nome_curso varchar(120) not null;

ALTER TABLE ALUNO
alter column cpf varchar(15) not null;

ALTER TABLE ALUNO
ADD data_nascimento int not null

ALTER TABLE ALUNO 
ADD constraint ck_aluno_data_nascimento check (data_nascimento < getdate())

ALTER TABLE ALUNO
DROP COLUMN cpf

