-- Create tables for each CSV file
CREATE TABLE titles(
	title_id VARCHAR(255) PRIMARY KEY NOT NULL,
	title VARCHAR(255)
);

CREATE TABLE employees(
	employee_no INT PRIMARY KEY NOT NULL,
	employee_title_id VARCHAR(255),
	birth_date VARCHAR(255),
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(255),
	hire_date VARCHAR(255),
	FOREIGN KEY (employee_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries(
	employee_no INT NOT NULL,
	salary INT,
	FOREIGN KEY (employee_no) REFERENCES employees(employee_no)
);

CREATE TABLE departments(
	department_no VARCHAR(255) PRIMARY KEY NOT NULL,
	department_name VARCHAR(255)
);

CREATE TABLE dept_manager(
	department_no VARCHAR(255) NOT NULL,
	employee_no INT NOT NULL,
	FOREIGN KEY (employee_no) REFERENCES employees(employee_no),
	FOREIGN KEY (department_no) REFERENCES departments(department_no)
);

CREATE TABLE dept_emp(
	employee_no INT NOT NULL,
	department_no VARCHAR(255) NOT NULL,
	FOREIGN KEY (employee_no) REFERENCES employees(employee_no),
	FOREIGN KEY (department_no) REFERENCES departments(department_no)
);
-- Manually import each csv to relevant table (importing order will need to start with titles, employees & departments to ensure no failures)
--Add serial id for tables without primary keys

ALTER TABLE salaries ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE dept_emp ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE dept_manager ADD COLUMN id SERIAL PRIMARY KEY;
