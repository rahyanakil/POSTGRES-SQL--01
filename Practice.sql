CREATE TABLE employees (
    employee_id SERIAL PRIMARY key, 
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
)

CREATE table departments (
    department_id SERIAL PRIMARY key,
    department_name VARCHAR(50)
);

INSERT INTO departments (department_name) VALUES 
('Human Resources'),
('Engineering'),
('Sales'),
('Marketing'),
('Finance'),
('IT Support'),
('Legal'),
('Customer Service'),
('Operations'),
('Research and Development');

INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES
('Alice Johnson', 1, 55000.00, '2021-05-12'),
('Bob Smith', 2, 72000.00, '2020-03-18'),
('Carol Davis', 3, 60000.00, '2022-01-25'),
('David Wilson', 4, 58000.00, '2021-07-10'),
('Eva Brown', 5, 69000.00, '2019-09-03'),
('Frank Moore', 6, 52000.00, '2023-02-11'),
('Grace Taylor', 7, 75000.00, '2020-11-28'),
('Henry Anderson', 8, 50000.00, '2022-06-15'),
('Ivy Thomas', 9, 64000.00, '2021-04-07'),
('Jake Martin', 10, 71000.00, '2020-12-20');
--Show department name with average salary
SELECT department_name,avg(salary) FROM employees
 JOIN departments USING (department_id)
 GROUP BY department_name;
--count employees in each department 
SELECT department_name,COUNT(employee_id) as employee_count FROM employees
JOIN departments USING (department_id)
GROUP BY department_name;

-- Find the department name with the highest average
SELECT department_name,avg(salary) as avg_salary FROM employees
JOIN departments USING (department_id)
GROUP BY department_name
ORDER BY avg_salary DESC
LIMIT 1;
--count Employees Hired Each year
SELECT extract(YEAR from hire_date)as hire_year,COUNT(*) 
From employees 
GROUP BY hire_year

--
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
)

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2023-01-15', 150.75),
(2, '2023-02-20', 200.00),
(2, '2023-03-05', 99.99),
(3, '2023-04-10', 250.50),
(3, '2023-05-25', 75.00),
(3, '2023-06-30', 120.25),
(4, '2023-07-15', 300.00),
(4, '2023-08-20', 45.50),
(4, '2023-09-10', 180.00),
(5, '2023-10-05', 60.00);

drop table orders

-- FIND CUSTOMER WHO HAVE PLACED MORE THAN 2 ORDERS AND CALCULATE THE TOTAL AMOUNT BY EACH OF THE CUSTOMERS

SELECT customer_id ,COUNT(*) as order_count,SUM(total_amount) as total_spent FROM orders
GROUP BY customer_id
 HAVING COUNT(customer_id)>2
 ORDER BY customer_id ASC

 --Find the total amount of orders placed each month in the year 2022

 SELECT COUNT(customer_id)as customer_id, extract (MONTH FROM order_date) as order_month,SUM(total_amount) FROM orders
 GROUP BY order_month