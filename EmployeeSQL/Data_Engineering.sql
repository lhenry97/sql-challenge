CREATE TABLE employees(
	employee_no INT PRIMARY KEY NOT NULL,
	title_id VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR
);

CREATE TABLE salaries(
	employee_no INT NOT NULL,
	salary INT
);

CREATE TABLE dept_emp(
	employee_no INT NOT NULL,
	department_no VARCHAR
);

CREATE TABLE departments(
	department_no VARCHAR PRIMARY KEY NOT NULL,
	department_name VARCHAR
);

CREATE TABLE dept_manager(
	department_no VARCHAR,
	employee_no INT
);

CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY NOT NULL,
	title VARCHAR
);