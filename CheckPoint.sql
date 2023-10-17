//2. Exiba o último nome (LAST_NAME) e o salário (SALARY) dos funcionários que não são comissionados (commission_pct).
//Ordene a saída em ordem decrescente de salário.
SELECT last_name, salary
FROM employees
WHERE commission_pct IS NULL
ORDER BY salary DESC;

// 3. Crie um relatório que exiba o último nome (last_name), o salário (salary), e o código do departamento (department_id) 
// de todos os empregados que não tem a primeira letra A no último nome (last_name) e que tem o salário >= 1000 e que 
// trabalham no departamento (department_id) 60 ou 90
SELECT last_name, salary, department_id
FROM employees
WHERE last_name NOT LIKE 'A%' 
AND salary >= 1000
AND department_id IN (60, 90);

// Crie uma consulta para selecionar o último nome (last_name) e o salário (salary) de todos os funcionários 
// dos departamentos 10, 20 e 40. Apresente o resultado em ordem DECRESCENTE de salário.
SELECT last_name, salary
FROM employees
WHERE department_id IN (10, 20, 40)
ORDER BY salary DESC;

//Selecione  o nome completo  dos funcionários que não são comissionados (commission_pct)
//Observação: As colunas fisrts_name e last_name devem ser juntadas. Apelide essa coluna como FULL_EMPLOYEE_NAME
SELECT first_name || ' ' || last_name AS FULL_EMPLOYEE_NAME
FROM employees
WHERE commission_pct IS NULL;
