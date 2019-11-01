-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT
	"Employees".emp_no,
	"Employees".first_name,
	"Employees".last_name,
	"Employees".gender,
	"Salaries".salary
FROM
	"Employees"
	INNER JOIN "Salaries" ON "Employees".emp_no = "Salaries".emp_no

-- List employees who were hired in 1986.
SELECT
	"Employees".emp_no,
	"Employees".first_name,
	"Employees".last_name,
	"Employees".hire_date
FROM
	"Employees"
WHERE
	hire_date >= date '1986-01-01'
	AND hire_date <= date '1986-12-31'

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT
	"Employees".first_name,
	"Employees".last_name,
	"Dept_manager".dept_no,
	"Dept_manager".emp_no,
	"Dept_manager".from_date,
	"Dept_manager".to_date,
	"Departments".dept_name,
	"Departments".dept_no
FROM
	"Departments"
JOIN "Dept_manager" ON "Dept_manager".dept_no = "Departments".dept_no
JOIN "Employees" ON "Dept_manager".emp_no = "Employees".emp_no;
