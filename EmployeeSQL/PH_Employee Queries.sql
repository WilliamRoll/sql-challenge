--tables
SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles

--list employee #, LN, FN, Sex, Salary for each employee
SELECT employees.emp_no AS Employee_ID
	,employees.first_name AS Employee_First_Name
	,employees.last_name AS Employee_Last_Name
	,employees.sex AS Employee_Sex
	,salaries.salary AS Employee_Salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

--list FN, LN, hire date for employees hired in 1986
SELECT first_name AS Employee_First_Name
	,last_name AS Employee_Last_Name
	,hire_date AS Hire_Date
FROM employees 
	WHERE DATE_PART('YEAR', hire_date) = 1986;

--list manager of each dept w/ the following info: dept #, dept name, manager's  employee #, LN, FN
SELECT dm.dept_no AS Department_ID
	,dept.dept_name AS Department_Name
	,dm.emp_no AS Manager_ID
	,emp.last_name AS Manager_Last_Name
	,emp.first_name AS Manager_First_Name
FROM dept_manager AS dm
INNER JOIN departments AS dept ON dept.dept_no = dm.dept_no
INNER JOIN employees AS emp ON emp.emp_no = dm.emp_no;

--department of each employee w/ the following info: emp #, LN, FN, dept name
SELECT emp.emp_no AS Employee_ID
	,emp.last_name AS Employee_Last_Name
	,emp.first_name AS Employee_First_Name
	,dept.dept_name AS Department_Name
FROM employees AS emp
INNER JOIN dept_emp ON dept_emp.emp_no = emp.emp_no 
INNER JOIN departments AS dept ON dept.dept_no = dept_emp.dept_no;

--for employees w/ FN "Hercules" and LN begins w/ "B" list: FN, LN, Sex
SELECT first_name AS Employee_First_Name
	,last_name AS Employee_Last_Name
	,sex AS Employee_Sex
FROM employees
	WHERE first_name = 'Hercules'
		AND last_name LIKE 'B%';
	
--list all employees in the Sales dept, listing: employee #, LN, FN, dept name
SELECT emp.emp_no AS Employee_ID
	,emp.last_name AS Employee_Last_Name
	,emp.first_name AS Employee_First_Name
	,dept.dept_name AS Department_Name
FROM employees AS emp
INNER JOIN dept_emp ON dept_emp.emp_no = emp.emp_no
INNER JOIN departments AS dept ON dept.dept_no = dept_emp.dept_no
	WHERE dept.dept_name = 'Sales';
	
--list all employees in the Sales and Development depts, listing: employee #, LN, FN, dept name
SELECT emp.emp_no AS Employee_ID
	,emp.last_name AS Employee_Last_Name
	,emp.first_name AS Employee_First_Name
	,dept.dept_name AS Department_Name
FROM employees AS emp
INNER JOIN dept_emp ON dept_emp.emp_no = emp.emp_no
INNER JOIN departments AS dept ON dept.dept_no = dept_emp.dept_no
	WHERE dept.dept_name = 'Sales'
		OR dept.dept_name = 'Development';

--list the freq count of employee LN (descending order)
SELECT last_name AS Employee_Last_Name
	,COUNT(last_name) AS Last_Name_Count
FROM employees
	GROUP BY last_name
	ORDER BY Last_Name_Count DESC;
	
	
	
	
	