**Exercício 1 — Vai dar erro?** No banco Escola, diga se cada comando funciona. Se der erro, diga qual regra barrou:

--1. INSERT INTO ALUNO (matricula, nome, data\_nascimento) VALUES (2026006, 'Felipe Costa', '2003-05-05');
	INSERT INTO ALUNO (matricula, nome, data_nascimento, email) VALUES (2026006, 'Felipe Costa', '2003-05-05', 'felipe@email.com');
   R: TEM UMA BARRA EM DATA_NASCIMENTO, ERRO DE SINTAXE, FALTA O CAMPO E-MAIL QUE NÃO PERMITE NULO

--2. INSERT INTO ALUNO (matricula, nome, data\_nascimento, email) VALUES (2026007, 'Gabi', '2002-02-02', 'ana@email.com');
   INSERT INTO ALUNO (matricula, nome, data_nascimento, email) VALUES (2026007, 'Gabi', '2002-02-02', 'ana@email.com');
   R:TEM UMA BARRA EM DATA_NASCIMENTO, ERRO DE SINTAXE,

--3. INSERT INTO MATRICULA (matricula\_aluno, codigo\_curso) VALUES (2026001, 1);
     INSERT INTO MATRICULA (matricula_aluno, codigo_curso) VALUES (2026006, 1);
	 INSERT INTO MATRICULA (matricula_aluno, codigo_curso) VALUES (2026006, 1);
	 R:TEM UMA BARRA EM MATRICULA_ALUNO E EM CODIGO_CURSO, ERRO DE SINTAXE

--4. INSERT INTO CURSO (codigo\_curso, nome, carga\_horaria, registro\_professor) VALUES (5, 'Java', 40, 104);
	INSERT INTO CURSO (codigo_curso, nome, carga_horaria, registro_professor) VALUES (1, 'Java', 40, 1030);
	INSERT INTO CURSO (codigo_curso, nome, carga_horaria, registro_professor) VALUES (2, 'C#', 40, 1040);

--5. DELETE FROM PROFESSOR WHERE registro\_professor = 102;
	 DELETE FROM PROFESSOR WHERE registro_professor = 102;


--6. INSERT INTO ALUNO (matricula, data\_nascimento) VALUES (2026008, '2001-01-01');
	INSERT INTO ALUNO (matricula, data_nascimento) VALUES (2026008, '2001-01-01');

INSERT INTO PROFESSOR (registro_professor,nome,email)
VALUES ( 1030, 'Lucas','lucas@caslu.com.br'),
       ( 1040, 'Vinio','vinio@prof.com.br'),
       ( 1050, 'Guilherme', 'guilherme@prof.com.br')

	INSERT INTO ESPECIALIDADE_PROFESSOR(registro_professor,especialidade)
VALUES (  1040, 'C#'  ) 

SELECT * FROM ALUNO;
SELECT * FROM MATRICULA
SELECT * FROM CURSO
SELECT * FROM PROFESSOR


-- 1. Remove a FK antiga
ALTER TABLE CURSO
DROP CONSTRAINT fk_registro_professor;

ALTER TABLE CURSO ADD constraint fk_curso_professor foreign key (registro_professor)
references PROFESSOR(registro_professor)

-- 2. Cria a FK apontando para a nova tabela
ALTER TABLE CURSO
ADD CONSTRAINT fk_registro_professor 
FOREIGN KEY (registro_professor ) 
REFERENCES CURSO(codigo_curso);



