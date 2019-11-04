# EmployeesSQL DB schema diagram.

dept_manager as dm
-
dept_no varchar(7) FK -< d.dept_no
emp_no int FK -< e.emp_no
from_date date
to_date date

salaries as s
-
emp_no int FK -< e.emp_no
salary int
from_date date
to_date date

departments as d
-
dept_no varchar(7) pk
dept_name varchar(50)

titles as t
-
emp_no int FK -< e.emp_no
title varchar(50)
from_date date
to_date date

employees as e
-
emp_no int PK
birth_date date
first_name varchar(60)
last_name varchar(60)
gender varchar(3)
hire_date date

dept_emp as de
-
emp_no int FK -< e.emp_no
dept_no varchar(7) FK -< e.dept_no
from_date date
to_date date
