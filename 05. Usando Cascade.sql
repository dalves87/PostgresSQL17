
SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM aluno_curso;

--Não é permitido excluir o aluno vinculado em um curso
DELETE FROM aluno WHERE id = 1;

DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	FOREIGN KEY (aluno_id)
      REFERENCES aluno(id)
	  --
	  ON DELETE CASCADE
	  ON UPDATE CASCADE,
	  --
	FOREIGN KEY (curso_id)
      REFERENCES curso(id)
	  
);


INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,2);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);

--Evitar inconsistência do DB
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,3);


SELECT aluno.nome AS "Nome do Aluno", curso.nome AS "Nome do Curso"
  FROM aluno
  INNER JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  INNER JOIN curso ON curso.id = aluno_curso.curso_id;

--Agora é permitido excluir o aluno vinculado em um curso
DELETE FROM aluno WHERE id = 1;  


--Não é permitido alterar a chave do aluno vinculado em um curso
UPDATE aluno
  SET id = 10
 WHERE id = 2;

 DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	FOREIGN KEY (aluno_id)
      REFERENCES aluno(id)
	  --
	  ON DELETE CASCADE
	  ON UPDATE CASCADE,
	  --
	FOREIGN KEY (curso_id)
      REFERENCES curso(id)
	  
);

SELECT aluno.nome AS "Nome do Aluno", curso.nome AS "Nome do Curso"
  FROM aluno
  INNER JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  INNER JOIN curso ON curso.id = aluno_curso.curso_id;


--Agora é permitido alterar a chave do aluno vinculado em um curso
UPDATE aluno
  SET id = 10
 WHERE id = 2;

 