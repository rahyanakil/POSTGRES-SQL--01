
CREATE View dept_avg_salary
AS
SELECT department_name,avg(salary) FROM employees GROUP BY department_name;

CREATE View test_view
AS
SELECT employee_name,salary,department_name
FROM employees
WHERE department_name in 
(SELECT department_name FROM employees WHERE department_name LIKE '%R%');

SELECT * FROM test_view;

SELECT * from dept_avg_salary;