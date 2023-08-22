CREATE TABLE employees
( employee_id    NUMBER(6)    CONSTRAINT emp_employee_id  PRIMARY KEY,
  first_name     VARCHAR2(20),
  last_name      VARCHAR2(25) NOT NULL,
  email          VARCHAR2(25) NOT NULL CONSTRAINT emp_email_uk     UNIQUE,
  phone_number   VARCHAR2(20),
  hire_date      DATE         NOT NULL,
  job_id         VARCHAR2(10) NOT NULL,
  salary         NUMBER(8,2)  CONSTRAINT emp_salary_ck    CHECK (salary>0),
  commission_pct NUMBER(2,2),
  manager_id     NUMBER(6),
  department_id  NUMBER(4));
  
CREATE TABLE jobs
(job_id         VARCHAR2(10)    CONSTRAINT emp_job_id  PRIMARY KEY,
 job_title      VARCHAR2(35) NOT NULL,
 min_salary     NUMBER(6),
 max_salary     NUMBER(6));
 
CREATE TABLE emergency_contacts
 (contact_id    NUMBER    CONSTRAINT emp_contact_id  PRIMARY KEY,
 employee_id    NUMBER(6),
 first_name     VARCHAR(100 ) NOT NULL,
 last_name      VARCHAR(100 ) NOT NULL,
 relationship   VARCHAR(100),
 home_phone     VARCHAR(25),
 work_phone     VARCHAR(25),
 cell_phone     VARCHAR(25)
 );

CREATE TABLE job_history
(employee_id    NUMBER(6)    CONSTRAINT emp_job_history_id  PRIMARY KEY,
 start_date     DATE    NOT NULL,
 end_date       DATE  NOT NULL,
 job_id         VARCHAR(10),
 department_id  NUMBER(4));

CREATE TABLE departments
(department_id  NUMBER(4)    CONSTRAINT emp_department_id  PRIMARY KEY,
department_name VARCHAR2(30) NOT NULL,
manager_id      NUMBER(6));

CREATE TABLE locations
(location_id    NUMBER(4)    CONSTRAINT emp_location_id  PRIMARY KEY,
streat_adress   VARCHAR(40),
postal_code     VARCHAR(12),
city            VARCHAR(30) NOT NULL,
state_province  VARCHAR(25));

CREATE TABLE countries
(country_id     CHAR(2)    CONSTRAINT country_id_pk  PRIMARY KEY,
country_name    VARCHAR(40),
region_id NUMBER);

ALTER TABLE country ADD(
    CONSTRAINT country_id_pk FOREIGN KEY (region_id) REFERENCES regions);

CREATE TABLE regions
(region_id      NUMBER  CONSTRAINT reg_id_pk  PRIMARY KEY,
region_name     VARCHAR(25));

CREATE TABLE job_grades
(grade_level    VARCHAR(3),
lowest_sal      NUMBER,
highest_sal     NUMBER);