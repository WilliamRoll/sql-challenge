-- departments table
CREATE TABLE departments (
	dept_no VARCHAR(20) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(50) NOT NULL
);

-- dept_emp table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(20) NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);

-- debt_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(20) NOT NULL,	
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
);

--employees table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL, 
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);

--salaries table
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT NOT NULL
);

--titles table
CREATE TABLE titles (
	title_id VARCHAR(20) PRIMARY KEY NOT NULL,
	title VARCHAR(30) NOT NULL
);