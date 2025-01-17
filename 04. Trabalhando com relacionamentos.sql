DROP TABLE curso;

CREATE TABLE curso (
	id INTEGER PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);


INSERT INTO curso (id, nome) VALUES (NULL, NULL);
INSERT INTO curso (id, nome) VALUES (1, NULL);
INSERT INTO curso (id, nome) VALUES (NULL, 'html');

INSERT INTO curso (id, nome) VALUES (1, 'html');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');

SELECT * FROM curso;
SELECT * FROM aluno;

DROP TABLE aluno;

CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO aluno (nome) VALUES ('Diogo');
INSERT INTO aluno (nome) VALUES ('Vinícius');

SELECT * FROM aluno;

DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	FOREIGN KEY (aluno_id)
      REFERENCES aluno(id),
	FOREIGN KEY (curso_id)
      REFERENCES curso(id)
	  
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,2);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);

--Evitar inconsistência do DB
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,3);


SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM aluno_curso;

SELECT * 
  FROM aluno
  INNER JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  INNER JOIN curso ON curso.id = aluno_curso.curso_id;

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2);

SELECT aluno.nome AS Aluno, curso.nome AS Curso
  FROM aluno
  INNER JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  INNER JOIN curso ON curso.id = aluno_curso.curso_id;

--Relatório
SELECT aluno.nome AS "Nome do Aluno", curso.nome AS "Nome do Curso"
  FROM aluno
  INNER JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  INNER JOIN curso ON curso.id = aluno_curso.curso_id;


--Left join

INSERT INTO aluno (nome) VALUES ('Alex');
INSERT INTO curso (id, nome) VALUES (3, 'css');

SELECT aluno.nome AS "Nome do Aluno", curso.nome AS "Nome do Curso"
  FROM aluno
  LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  LEFT JOIN curso ON curso.id = aluno_curso.curso_id;

--RIGHT join
SELECT aluno.nome AS "Nome do Aluno", curso.nome AS "Nome do Curso"
  FROM aluno
  RIGHT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  RIGHT JOIN curso ON curso.id = aluno_curso.curso_id;

--FULL OUTER JOIN
SELECT aluno.nome AS "Nome do Aluno", curso.nome AS "Nome do Curso"
  FROM aluno
  FULL OUTER JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  FULL OUTER JOIN curso ON curso.id = aluno_curso.curso_id;


--CROSS JOIN
SELECT aluno.nome AS "Nome do Aluno", curso.nome AS "Nome do Curso"
  FROM aluno
  CROSS JOIN curso;

INSERT INTO aluno (nome) VALUES ('João');
INSERT INTO curso (id, nome) VALUES (4, 'Oracle');


SELECT aluno.nome AS "Nome do Aluno", curso.nome AS "Nome do Curso"
  FROM aluno
  CROSS JOIN curso;