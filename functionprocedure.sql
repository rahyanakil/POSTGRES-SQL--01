CREATE Procedure remove_emp()
LANGUAGE plpgsql
as ADD
$$
BEGIN
DELETE FROM employees WHERE employee_id =28;
END
$$


call remove_emp();