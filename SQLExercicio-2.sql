**Exercício 2 — Escreva o UPDATE.** No banco Escola:

1. O professor 1030 passou a ter o e-mail paula@escola.com.
UPDATE PROFESSOR SET email = 'paula@escola.com'
WHERE registro_professor = 1030

2. Todos os cursos com menos de 40 horas ganharam mais 10 horas.

INSERT INTO CURSO (codigo_curso, nome, carga_horaria, registro_professor)
VALUES (3, 'SQL', 20, 1050)

UPDATE CURSO SET carga_horaria = (carga_horaria +10)
WHERE carga_horaria < 40

SELECT * FROM CURSO 
WHERE carga_horaria < 40

3. O curso Redes de Computadores passou para o professor 101.

INSERT INTO CURSO (codigo_curso, nome, carga_horaria, registro_professor)
VALUES (4, 'Rede de Computadores', 20, 1010)


INSERT INTO PROFESSOR (registro_professor, nome, email)
VALUES (1010, 'FABIO', 'fabio@email.com')

SELECT * FROM PROFESSOR

