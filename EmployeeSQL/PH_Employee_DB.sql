-- departments table
CREATE TABLE departments (
	dept_no VARCHAR(20) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(50) NOT NULL,
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

