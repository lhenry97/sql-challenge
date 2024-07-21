-- Query 1: List employee number, last name, first name, sex and salary of each employee
SELECT employees.employee_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
INNER JOIN salaries ON
employees.employee_no = salaries.employee_no

-- Query 2: List first name, last name & hire date for employees hired in 1986
SELECT employees.first_name,
employees.last_name,
employees.hire_date
FROM employees
WHERE hire_date LIKE '%1986' 

-- Query 3: List manager of each department with department no., department name, employee no., last name & first name
SELECT departments.department_no,
departments.department_name,
dept_manager.employee_no,
employees.last_name,
employees.first_name
FROM departments
INNER JOIN dept_manager ON
departments.department_no = dept_manager.department_no
INNER JOIN employees ON
dept_manager.employee_no = employees.employee_no;

-- Query 4: List department number for each employee along with employee number, last name, first name & department name
SELECT departments.department_no,
dept_emp.employee_no,
employees.last_name,
employees.first_name,
departments.department_name
FROM departments
INNER JOIN dept_emp ON
departments.department_no = dept_emp.department_no
INNER JOIN employees ON
dept_emp.employee_no = employees.employee_no;

-- Query 5: List first name, last name, sex of each employee whose first name is Hercules and last name begins with B
SELECT employees.first_name,
employees.last_name,
employees.sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Query 6: List employees in Sales department including their employee number, last name & first name
SELECT 
dept_emp.employee_no,
employees.last_name,
employees.first_name,
departments.department_name
FROM departments
INNER JOIN dept_emp ON
departments.department_no = dept_emp.department_no
INNER JOIN employees ON
dept_emp.employee_no = employees.employee_no
WHERE department_name = 'Sales';

-- Query 7: List each employee in sales and development department, including employee no., last name, first name & department name
SELECT 
dept_emp.employee_no,
employees.last_name,
employees.first_name,
departments.department_name
FROM departments
INNER JOIN dept_emp ON
departments.department_no = dept_emp.department_no
INNER JOIN employees ON
dept_emp.employee_no = employees.employee_no
WHERE department_name = 'Sales'
OR department_name = 'Development';

-- Query 8: List frequency counts, in descending order, of all employee last names (i.e. how many employees share each last name)
SELECT last_name, COUNT(last_name) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;