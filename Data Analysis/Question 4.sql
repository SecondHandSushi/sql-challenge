--4 List the department number for each employee along with that
--employee’s employee number, last name, first name, and department name.

SELECT
	de.dept_no AS "Department No.",
	e.first_name || ' ' || e.last_name AS "Employee",
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