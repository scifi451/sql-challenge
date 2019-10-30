# EmployeesSQL DB schema diagram.

Dept_manager as DM
-
dept_no varchar(7) FK -< D.dept_no
emp_no int FK -< E.emp_no
from_date date
to_date date

Salaries as S
-
emp_no int FK -< E.emp_no
salary int
from_date date
to_date date

Departments as  D
-
dept_no varchar(7) pk
dept_name varchar(50)

Titles as T
-
emp_no int FK -< E.emp_no
title varchar(50)
from_date date
to_date date

Employees as E
-
emp_no int PK
birth_date date
first_name varchar(60)
last_name varchar(60)
gender varchar(3)
hire_date date

Dept_emp as DE
-
emp_no int FK -< E.emp_no
dept_no varchar(7) FK -< D.dept_no
from_date date
to_date date
