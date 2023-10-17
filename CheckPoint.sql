//2. Exiba o �ltimo nome (LAST_NAME) e o sal�rio (SALARY) dos funcion�rios que n�o s�o comissionados (commission_pct).
//Ordene a sa�da em ordem decrescente de sal�rio.
SELECT last_name, salary
FROM employees
WHERE commission_pct IS NULL
ORDER BY salary DESC;

// 3. Crie um relat�rio que exiba o �ltimo nome (last_name), o sal�rio (salary), e o c�digo do departamento (department_id) 
// de todos os empregados que n�o tem a primeira letra A no �ltimo nome (last_name) e que tem o sal�rio >= 1000 e que 
// trabalham no departamento (department_id) 60 ou 90
SELECT last_name, salary, department_id
FROM employees
WHERE last_name NOT LIKE 'A%' 
AND salary >= 1000
AND department_id IN (60, 90);

// Crie uma consulta para selecionar o �ltimo nome (last_name) e o sal�rio (salary) de todos os funcion�rios 
// dos departamentos 10, 20 e 40. Apresente o resultado em ordem DECRESCENTE de sal�rio.
SELECT last_name, salary
FROM employees
WHERE department_id IN (10, 20, 40)
ORDER BY salary DESC;

//Selecione  o nome completo  dos funcion�rios que n�o s�o comissionados (commission_pct)
//Observa��o: As colunas fisrts_name e last_name devem ser juntadas. Apelide essa coluna como FULL_EMPLOYEE_NAME
SELECT first_name || ' ' || last_name AS FULL_EMPLOYEE_NAME
FROM employees
WHERE commission_pct IS NULL;
