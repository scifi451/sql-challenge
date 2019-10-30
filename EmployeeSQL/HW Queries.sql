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