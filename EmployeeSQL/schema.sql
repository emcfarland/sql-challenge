-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE departments (
    "dept_no" VARCHAR(4)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE dept_emp (
    "emp_no" VARCHAR(7)   NOT NULL,
    "dept_no" VARCHAR(4)   NOT NULL
);

CREATE TABLE dept_managers (
    "dept_no" VARCHAR(4)   NOT NULL,
    "emp_no" VARCHAR(7)   NOT NULL
);

CREATE TABLE employees (
    "emp_no" VARCHAR(7)   NOT NULL,
    "emp_title_id" VARCHAR(5)   NOT NULL,
    "birth_date" VARCHAR(10)   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR(3)   NOT NULL,
    "hire_date" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE salaries (
    "emp_no" VARCHAR(7)   NOT NULL,
    "salary" VARCHAR(10)   NOT NULL
);

CREATE TABLE titles (
    "title_id" VARCHAR(5)   NOT NULL,
    "title" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE dept_emp ADD CONSTRAINT "fk_Dept_Emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES employees ("emp_no");

ALTER TABLE dept_emp ADD CONSTRAINT "fk_Dept_Emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES departments ("dept_no");

ALTER TABLE dept_managers ADD CONSTRAINT "fk_Dept_Managers_dept_no" FOREIGN KEY("dept_no")
REFERENCES departments ("dept_no");

ALTER TABLE dept_managers ADD CONSTRAINT "fk_Dept_Managers_emp_no" FOREIGN KEY("emp_no")
REFERENCES employees ("emp_no");

ALTER TABLE employees ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES titles ("title_id");

ALTER TABLE salaries ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES employees ("emp_no");

