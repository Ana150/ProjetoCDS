--Inserindo  Linhas
DESC departments;

INSERT INTO departments
(department_id, department_name, manager_id, location_id)
VALUES (271, 'Public Relations', 100, 1700);

INSERT INTO departments
(department_id, department_name, manager_id, location_id)
VALUES ('Public Relations', 281, 100, 1700);

--Inserindo Linhas com Valores Nulos
INSERT INTO	departments (department_id, department_name)
VALUES (290, 'Purchasing');

INSERT INTO	departments
VALUES		(300, 'Finance', NULL, NULL);

--Alterando os Dados de uma Tabela
UPDATE employees
SET    department_id = 80, salary = 8000, commission_pct=.1
WHERE  employee_id = 1113;

--Alterando os TODOS de uma Tabela
UPDATE employees
SET    department_id = 80, salary = 8000, commission_pct=.1;

UPDATE 	copy_emp
SET    	department_id = 110;

--Removendo uma Linha de uma Tabela
DELETE FROM departments
WHERE  department_name = 'Finance';

DELETE FROM  employees;
