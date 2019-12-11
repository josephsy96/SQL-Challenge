-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, first_name, last_name, gender, salary
FROM employees AS e
JOIN salaries AS s ON
e.emp_no = s.emp_no
GROUP BY 1, 2, 3, 4, 5;

-- 2. List employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN'1986-01-01' AND '1986-12-31'
GROUP BY 1, 2, 3;