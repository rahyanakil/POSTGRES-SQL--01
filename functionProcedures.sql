SELECT * FROM employees;
SELECT count(*) from employees;

CREATE FUNCTION emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
SELECT count(*) from employees;
DELETE from employees where employee_id=12
$$

SELECT emp_count();

select * from employees


CREATE OR REPLACE FUNCTION delete_emp()
RETURNS void
LANGUAGE SQL
AS
$$

DELETE from employees WHERE employee_id=12;
$$

SELECT delete_emp();



--how to use parameter 
CREATE OR REPLACE FUNCTION delete_emp_with_parameter(p_emp_id int)
RETURNS void
LANGUAGE SQL
AS
$$

DELETE from employees where employee_id=p_emp_id;
$$

SELECT delete_emp_with_parameter(3);


select * from employees