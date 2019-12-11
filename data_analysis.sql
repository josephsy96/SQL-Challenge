-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, first_name, last_name, gender, salary
FROM employees AS e
JOIN salaries AS s ON
e.emp_no = s.emp_no
GROUP BY 1, 2, 3, 4, 5;