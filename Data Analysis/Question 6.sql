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