--retrive all employees whose salary is greater than the highest salary of the HR department

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES
('Alice Smith', 'Sales', 55000.00, '2020-01-15'),
('Bob Johnson', 'Marketing', 60000.00, '2019-03-22'),
('Charlie Brown', 'IT', 75000.00, '2021-06-30'),
('David Wilson', 'HR', 50000.00, '2018-11-05'),
('Eva Green', 'Finance', 80000.00, '2020-05-18'),
('Frank White', 'Sales', 52000.00, '2021-02-12'),
('Grace Lee', 'Marketing', 58000.00, '2020-09-25'),
('Henry King', 'IT', 72000.00, '2019-12-01'),
('Ivy Turner', 'HR', 49000.00, '2021-04-15'),
('Jack Brown', 'Finance', 85000.00, '2018-07-10'),
('Kathy Adams', 'Sales', 60000.00, '2020-03-30'),
('Liam Scott', 'Marketing', 62000.00, '2019-08-14'),
('Mona Patel', 'IT', 74000.00, '2021-07-20'),
('Nina Johnson', 'HR', 51000.00, '2018-12-22'),
('Oliver Garcia', 'Finance', 90000.00, '2020-10-10'),
('Paul Martinez', 'Sales', 53000.00, '2021-01-11'),
('Quinn Davis', 'Marketing', 60000.00, '2019-04-17'),
('Rita Wilson', 'IT', 71000.00, '2020-08-08'),
('Sam Thompson', 'HR', 48000.00, '2018-05-25'),
('Tina Clark', 'Finance', 87000.00, '2021-03-01'),
('Uma Robinson', 'Sales', 54000.00, '2020-06-15'),
('Victor Lewis', 'Marketing', 59000.00, '2019-11-30'),
('Wendy Hall', 'IT', 73000.00, '2021-05-19'),
('Xander Young', 'HR', 50000.00, '2018-09-10'),
('Yara Lee', 'Finance', 82000.00, '2020-04-20'),
('Zoe King', 'Sales', 56000.00, '2021-02-22'),
('Aaron Scott', 'Marketing', 64000.00, '2019-07-07'),
('Bella Green', 'IT', 75000.00, '2021-09-15'),
('Cody Adams', 'HR', 49000.00, '2018-06-18'),
('Diana Brown', 'Finance', 91000.00, '2020-11-11'),
('Ethan White', 'Sales', 57000.00, '2021-03-03'),
('Fiona Turner', 'Marketing', 61000.00, '2019-10-21'),
('Gabe Wilson', 'IT', 74000.00, '2021-08-30'),
('Hannah Garcia', 'HR', 52000.00, '2018-02-14'),
('Ian Martinez', 'Finance', 88000.00, '2020-12-05'),
('Julia Lee', 'Sales', 59000.00, '2021-01-25'),
('Kevin Davis', 'Marketing', 65000.00, '2019-05-09'),
('Laura Thompson', 'IT', 72000.00, '2021-04-07'),
('Mike Johnson', 'HR', 51000.00, '2018-03-29'),
('Nora Smith', 'Finance', 84000.00, '2020-10-22'),
('Oscar Brown', 'Sales', 58000.00, '2021-06-10'),
('Paula Clark', 'Marketing', 62000.00, '2019-12-15'),
('Quincy Wilson', 'IT', 71000.00, '2021-07-25'),
('Rachel Green', 'HR', 50000.00, '2018-08-18')

select * from employees;
--select highest salary of hr 
 SELECT department_name,salary
FROM employees 
WHERE department_name='HR' AND salary = (SELECT MAX(salary) FROM employees WHERE department_name='HR');

--retrive all employees whose salary is greater than the highest salary of the HR department
SELECT * FROM employees WHERE salary>(SELECT max(salary) from employees WHERE department_name='HR')
--select the department name and the sum of each department 

SELECT department_name,sum(salary) FROM employees GROUP BY department_name
--solving problem by using subquery

SELECT * from (SELECT department_name,sum(salary)from employees GROUP BY department_name) as avg_dept_salary



drop table employees;