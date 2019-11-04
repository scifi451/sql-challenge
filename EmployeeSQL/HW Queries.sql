-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.gender,
	salaries.salary
FROM
	employees
	INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

-- List employees who were hired in 1986.
SELECT
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.hire_date
FROM
	employees
WHERE
	hire_date >= date '1986-01-01'
	AND hire_date <= date '1986-12-31';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT
	employees.first_name,
	employees.last_name,
	dept_manager.dept_no,
	dept_manager.emp_no,
	dept_manager.from_date,
	dept_manager.to_date,
	departments.dept_name,
	departments.dept_no
FROM
	departments
	JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
	JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
	dept_manager.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
FROM
	departments
	JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
	JOIN employees ON dept_manager.emp_no = employees.emp_no;

--List all employees whose first name is Hercules and last names begin with B.
SELECT
	*
FROM
	employees
WHERE
	first_name = 'Hercules'
	AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT
	dept_emp.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
FROM
	departments
	JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
	JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE
	departments.dept_no = 'd007';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
	dept_emp.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
FROM
	departments
	JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
	JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE
	departments.dept_no = 'd007'
	OR departments.dept_no = 'd005';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT
	last_name,
	count(last_name)
FROM
	employees
GROUP BY
	employees.last_name
ORDER BY
	count(last_name)
	DESC;