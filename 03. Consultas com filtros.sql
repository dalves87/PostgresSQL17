SELECT * FROM aluno;

SELECT nome AS "Nome do Aluno",
	   idade,
	   dt_matricula AS quando_se_matriculou
  FROM aluno; 

INSERT INTO aluno (nome) VALUES ('Vinícius Dias');
INSERT INTO aluno (nome) VALUES ('Nico steppat');
INSERT INTO aluno (nome) VALUES ('João Roberto');
INSERT INTO aluno (nome) VALUES ('Diego');

SELECT *
  FROM aluno
 WHERE nome LIKE '_iogo';

SELECT *
  FROM aluno
 WHERE nome LIKE 'Di_go';


SELECT *
  FROM aluno
 WHERE nome LIKE '%i%a%';

SELECT *
  FROM aluno
 WHERE cpf IS NOT NULL;
 
SELECT *
  FROM aluno
 WHERE idade = 30;

SELECT *
  FROM aluno
 WHERE idade <> 30;

 SELECT *
  FROM aluno
 WHERE idade < 100;

 SELECT *
  FROM aluno
 WHERE idade BETWEEN 10 AND 40;

 SELECT *
  FROM aluno
 WHERE ativo = true;

  SELECT *
  FROM aluno
 WHERE ativo = false;
 
 SELECT *
  FROM aluno
 WHERE ativo is null;

  SELECT *
    FROM aluno
   WHERE nome LIKE 'D%'
     AND cpf IS NOT NULL;

  SELECT *
    FROM aluno
   WHERE nome = 'Diogo'
      OR nome LIKE 'Nico%';


 