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