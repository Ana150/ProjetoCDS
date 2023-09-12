--PARTE 2
DESCRIBE employees;

SELECT last_name, job_id, hire_date, phone_number  FROM employees;

SELECT employee_id FROM employees;

--PARTE 3
SELECT employee_id AS "emp", last_name AS "dds" from employees;
SELECT	'Nome: ' || last_name || ', tem como cago ' ||job_id AS "Employee an Title"
FROM 	employees;