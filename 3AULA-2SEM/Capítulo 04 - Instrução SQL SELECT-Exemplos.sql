--Selecionando Todas as Colunas
SELECT *
FROM   departments;

--Selecionando Colunas Específicas
SELECT department_id, location_id
FROM   departments;

--Usando Operadores Aritméticos
SELECT last_name, salary, salary + 300
FROM   employees;

--Precedência de Operadores
SELECT last_name, salary, 12*salary+100
FROM   employees;

SELECT last_name, salary, 12*(salary+100)
FROM   employees;

--Definindo um Valor Nulo
SELECT last_name, job_id, salary, commission_pct
FROM   employees;

--Valores Nulos em Expressões Aritméticas
SELECT last_name, 12*salary*commission_pct
FROM   employees;

--Usando Apelidos de Colunas
SELECT last_name AS name, commission_pct comm
FROM   employees;

SELECT last_name "Name" , salary*12 "Annual Salary"
FROM employees;

--Operador de Concatenação
SELECT	'Nome: ' || last_name || ' tem como cago ' ||job_id AS "Employees"
FROM 	employees;

--Linhas Duplicadas
SELECT department_id
FROM   employees;

SELECT DISTINCT department_id
FROM   employees;

