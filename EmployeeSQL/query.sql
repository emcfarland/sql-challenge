--SELECT * FROM departments;
--SELECT * FROM dept_emp;
--SELECT * FROM dept_managers;
--SELECT * FROM employees ORDER BY emp_no;
--SELECT * FROM salaries;
--SELECT * FROM titles;

--Return employee numbers, first and last names, sexes, and salaries,
--order by employee number
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e, salaries AS s
WHERE e.emp_no = s.emp_no
ORDER BY e.emp_no;

--Return first and last names, and hire dates, order by last name
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986'
ORDER BY last_name;

--Return department numbers and names, managers' numbers, first and last names
SELECT d.dept_no, d.dept_name, e.emp_no, e.first_name, e.last_name
FROM employees AS e
INNER JOIN dept_managers AS m
ON e.emp_no = m.emp_no
INNER JOIN departments AS d
ON d.dept_no = m.dept_no;

--Return employee numbers, last and first names, department names
SELECT e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
ORDER BY e.last_name;

--Return first and last names, sexes for "Hercules B..."s
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name;

--Return employee numbers, last and first names, 
--and department name for employees in Sales department
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_emp AS de
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
INNER JOIN employees AS e
ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales'
ORDER BY emp_no;

--Return employee numbers, last and first names, 
--and department name for employees in Sales and Development departments


--Return frequency of employees' last names in descending order

