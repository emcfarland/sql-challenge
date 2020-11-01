--SELECT * FROM departments;
--SELECT * FROM dept_emp;
--SELECT * FROM dept_managers;
--SELECT * FROM employees;
--SELECT * FROM salaries;
--SELECT * FROM titles;

--Return employee numbers, first and last names, sexes, and salaries,
--order by employee number.
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e, salaries AS s
WHERE e.emp_no = s.emp_no
ORDER BY e.emp_no;

--Return first and last names, and hire dates, order by last name.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986'
ORDER BY last_name;

--Return department numbers and names, managers' numbers, first and last names.
