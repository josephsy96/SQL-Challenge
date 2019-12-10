
--Create new tables for database
CREATE TABLE departments(dept_no VARCHAR(10), 
dept_name VARCHAR(55));

CREATE TABLE dept_emp(emp_no INTEGER, 
                      dept_no VARCHAR(10),
                      from_date DATE,
                      to_date DATE);


