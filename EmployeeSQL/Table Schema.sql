-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- EmployeesSQL DB schema diagram.

CREATE TABLE  Dept_manager  (
     dept_no  varchar(7)   NOT NULL,
     emp_no  int   NOT NULL,
     from_date  date   NOT NULL,
     to_date  date   NOT NULL
);

CREATE TABLE  Salaries  (
     emp_no  int   NOT NULL,
     salary  int   NOT NULL,
     from_date  date   NOT NULL,
     to_date  date   NOT NULL
);

CREATE TABLE  Departments  (
     dept_no  varchar(7)   NOT NULL,
     dept_name  varchar(50)   NOT NULL,
    CONSTRAINT  pk_Departments  PRIMARY KEY (
         dept_no 
     )
);

CREATE TABLE  Titles  (
     emp_no  int   NOT NULL,
     title  varchar(50)   NOT NULL,
     from_date  date   NOT NULL,
     to_date  date   NOT NULL
);

CREATE TABLE  Employees  (
     emp_no  int   NOT NULL,
     birth_date  date   NOT NULL,
     first_name  varchar(60)   NOT NULL,
     last_name  varchar(60)   NOT NULL,
     gender  varchar(3)   NOT NULL,
     hire_date  date   NOT NULL,
    CONSTRAINT  pk_Employees  PRIMARY KEY (
         emp_no 
     )
);

CREATE TABLE  Dept_emp  (
     emp_no  int   NOT NULL,
     dept_no  varchar(7)   NOT NULL,
     from_date  date   NOT NULL,
     to_date  date   NOT NULL
);

ALTER TABLE  Dept_manager  ADD CONSTRAINT  fk_Dept_manager_dept_no  FOREIGN KEY( dept_no )
REFERENCES  Departments  ( dept_no );

ALTER TABLE  Dept_manager  ADD CONSTRAINT  fk_Dept_manager_emp_no  FOREIGN KEY( emp_no )
REFERENCES  Employees  ( emp_no );

ALTER TABLE  Salaries  ADD CONSTRAINT  fk_Salaries_emp_no  FOREIGN KEY( emp_no )
REFERENCES  Employees  ( emp_no );

ALTER TABLE  Titles  ADD CONSTRAINT  fk_Titles_emp_no  FOREIGN KEY( emp_no )
REFERENCES  Employees  ( emp_no );

ALTER TABLE  Dept_emp  ADD CONSTRAINT  fk_Dept_emp_emp_no  FOREIGN KEY( emp_no )
REFERENCES  Employees  ( emp_no );

ALTER TABLE  Dept_emp  ADD CONSTRAINT  fk_Dept_emp_dept_no  FOREIGN KEY( dept_no )
REFERENCES  Departments  ( dept_no );

