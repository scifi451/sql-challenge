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

   --  Work in progress
-- List employees who were hired in 1986.
SELECT
	"Employees".emp_no,
	"Employees".first_name,
	"Employees".last_name,
	"Employees".hire_date
FROM
	"Employees"
WHERE hire_date >= date '1986-01-01' and hire_date < date '1986-12-31'