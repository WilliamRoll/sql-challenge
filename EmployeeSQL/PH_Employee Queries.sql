SELECT * FROM employees
SELECT * FROM salaries
--list employee #, LN, FN, Sex, Salary for each employee
SELECT employees.emp_no AS Employee_ID
	,employees.first_name AS Employee_First_Name
	,employees.last_name AS Employee_Last_Name
	,employees.sex AS Employee_Sex
	,salaries.salary AS Employee_Salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no

--list FN, LN, hire date for employees hired in 1986
SELECT first_name, last_name, hire_date 
FROM employees 
WHERE DATE_PART('YEAR', hire_date) = 1986;