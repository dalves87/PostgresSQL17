--Trabalhar com números
integer
real
serial
numeric

--Trabalhar com textos
varchar
char
text

--Trabalhar com verdadeiro ou falso
boolean

--Trabalhar com data/hora
date
time
timestamp

--Criando a tabela Aluno
CREATE TABLE ALUNO (
	ID SERIAL,
	NOME VARCHAR(255),
	CPF CHAR(11),
	OBS TEXT,
	IDADE INTEGER,
	VALOR NUMERIC(10,2),
	ALTURA REAL,
	ATIVO BOOLEAN,
	DATA_NASCIMENTO DATE,
	HORA_AULA TIME,
	DT_MATRICULA TIMESTAMP
	
);
select * from aluno;


