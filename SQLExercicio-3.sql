--**Exercício 3 — Escreva o DELETE.** No banco Escola:

--1. Apague a matrícula da aluna 2026005 no curso 2.
--2. Apague o aluno 2026002 (pense na ordem!).
--3. Confira com 'SELECT'

INSERT INTO MATRICULA (matricula_aluno, codigo_curso) VALUES (2026005, 2);
INSERT INTO ALUNO (matricula, nome, data_nascimento, email) VALUES (2026002, 'JOAO', '1991-05-05', 'teste@email.com')

delete from MATRICULA where matricula_aluno = 2026005 AND codigo_curso = 2

SELECT * FROM MATRICULA
SELECT * FROM ALUNO