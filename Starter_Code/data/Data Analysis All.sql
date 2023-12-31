--1 SELECT employee_no, last_name, first_name, sex, and salary of each employee

SELECT
	e.emp_no AS "Employee No.",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	e.sex AS "Sex",
	s.salary AS "Salary"
FROM 
	employees e
JOIN
	salaries s ON e.emp_no = s.emp_no;

--2 List the first name, last name, and hire date for the employees who
--were hired in 1986.

SELECT
	first_name AS "First Name",
	last_name AS "Last Name",
	hire_date AS "Hire Date"
FROM
	employees
WHERE
	EXTRACT(YEAR FROM hire_date) = 1986;

--3 List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.

SELECT
	d.dept_name AS "Department",
	dm.dept_no AS "Department No.",
	e.first_name || ' ' || e.last_name AS "Department Manager",
	e.emp_no AS "Employee No.",
	e.last_name AS "Last Name",
	e.first_name AS "First Name"
FROM 
	employees e
JOIN
	department_manager dm ON e.emp_no=dm.emp_no
JOIN
	departments d ON dm.dept_no=d.dept_no
	
--4 List the department number for each employee along with that
--employee’s employee number, last name, first name, and department name.

SELECT
	de.dept_no AS "Department No.",
	e.emp_no AS "Employee No.",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department"
FROM 
	employees e
JOIN
	dept_emp de ON e.emp_no=de.emp_no
JOIN
	departments d ON de.dept_no=d.dept_no

--5 List first name, last name, and sex of each employee whose
--first name is Hercules and whose last name begins with the letter B.

SELECT
	first_name AS "First Name",
	last_name AS "Last Name",
	sex AS "Sex"
FROM
	employees
WHERE
	first_name = 'Hercules' AND last_name LIKE 'B%' 

--6 List each employee in the Sales department, including
--their employee number, last name, and first name.

SELECT
	e.first_name || ' ' || e.last_name AS "Employee",
	e.emp_no AS "Employee No.",
	e.last_name AS "Last Name",
	e.first_name AS "First Name"
FROM 
	employees e
JOIN
	dept_emp de ON e.emp_no = de.emp_no
WHERE
	de.dept_no = 'd007';

--7 List each employee in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.

SELECT
	e.first_name || ' ' || e.last_name AS "Employee",
    e.emp_no AS "Employee No.",
    e.last_name AS "Last Name",
    e.first_name AS "First Name",
    d.dept_name AS "Department"
FROM
    employees e
JOIN
    dept_emp de ON e.emp_no = de.emp_no
JOIN
    departments d ON de.dept_no = d.dept_no
WHERE
    d.dept_no IN ('d007', 'd005');

-- 8 List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name).

SELECT
	e.last_name AS "Last Name",
	COUNT(e.last_name) AS "Frequency Count"
FROM
	employees e
GROUP BY
	last_name
ORDER BY
	COUNT(e.last_name) DESC;
