CREATE TABLE IF NOT EXISTS employees (

id SERIAL PRIMARY KEY ,

name TEXT,
               
last_name TEXT,

salary INTEGER,

department_id INTEGER);

CREATE TABLE IF NOT EXISTS departments (

id SERIAL PRIMARY KEY,

name TEXT);
INSERT INTO employees (name, last_name, salary, department_id) VALUES

('Alice','Wayne', 2000, 1),

('Bob', 'cooper', 3000, 2),

('Charlie','Mcalister',4000, 3),

('Joey','Smith',6000, 2);

INSERT INTO departments (name) VALUES

('Human Resources'),

('Finance'),

('Engineering');

-- TASK 1
CREATE VIEW vw_employee_detail AS 

SELECT e.name as first_name , e.last_name as last_name , d.name as department_name
FROM employees e JOIN department d ON e.department_id = d.id
;
SELECT * FROM vw_employee_detail;


-- TASK 2 
CREATE OR REPLACE VIEW vw_employee_detail AS 
SELECT e.name as first_name , e.last_name as last_name , d.name as department_name
FROM employees e JOIN department d ON e.department_id = d.id
WHERE d.id = 5
;
SELECT * FROM vw_employee_detail;

CREATE VIEW vw_high_states_suppliers AS 
SELECT * FROM suppliers 
WHERE status > 15 
WITH CHECK OPTION
;
SELECT * FROM vw_high_states_suppliers; 
