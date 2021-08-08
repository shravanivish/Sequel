// Return employee record with max salary

> SELECT * FROM employee 
WHERE salary = ( SELECT MAX( salary ) 
FROM employee);

// Select highest salary in employee table

> SELECT MAX( salary ) 
FROM employee;

// Select 2nd highest salary in employee table

> SELECT MAX( salary ) 
FROM employe 
WHERE salary NOT IN (SELECT MAX( salary ) 
FROM employee);

// Select range of employee based on ID

> SELECT * FROM employee 
WHERE employee_id BETWEEN 2003 AND 2008;

// Return employee name, highest salary and department

> SELECT e.first_name, e.last_name, e.salary, d.department_name 
FROM employee e 
INNER JOIN 
department d ON ( e.department_id = d.department_id ) 
WHERE salary IN 
( SELECT MAX( salary ) FROM employee);

// Return highest salary, employee name, department name for each department

> SELECT e.first_name, e.last_name, e.salary, d.department_name 
FROM employee e 
INNER JOIN 
department d ON ( e.department_id = d.department_id ) 
WHERE salary IN 
( SELECT MAX( salary ) FROM employee GROUP BY department_id);
