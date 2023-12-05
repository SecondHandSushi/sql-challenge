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
