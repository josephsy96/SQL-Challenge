-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, first_name, last_name, gender, salary
FROM employees AS e
JOIN salaries AS s ON
e.emp_no = s.emp_no
GROUP BY 1, 2, 3, 4, 5;

-- 2. List employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
GROUP BY 1, 2, 3;

-- 3. List the manager of each department with the following information: department number, department name, 
--    the manager's employee number, last name, first name, and start and end employment dates.
SELECT dm.dept_no, d.dept_name, e.emp_no, first_name, last_name, dm.from_date, dm.to_date
FROM employees AS e
JOIN dept_manager AS dm ON 
e.emp_no = dm.emp_no
JOIN departments AS d ON
dm.dept_no = d.dept_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, first_name, last_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON
e.emp_no = de.emp_no
JOIN departments AS d ON
de.dept_no = d.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE '%Hercules%'
AND
last_name LIKE 'B%'
ORDER BY 2 ASC;

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, first_name, last_name, d.dept_name
FROM employees AS e 
JOIN dept_emp AS de ON
e.emp_no = de.emp_no
JOIN departments AS d ON
de.dept_no = d.dept_no
WHERE dept_name = 'Sales';
