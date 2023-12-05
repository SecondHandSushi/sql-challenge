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