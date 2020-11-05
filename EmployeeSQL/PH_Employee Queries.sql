SELECT * FROM employees
SELECT * FROM salaries
--list employee #, LN, FN, Sex, Salary for each employee
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no

--