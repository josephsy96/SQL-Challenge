-- Create Database called Pewlett_Hackard
--Create new tables for database

CREATE TABLE departments(dept_no VARCHAR(10), 
dept_name VARCHAR(55));

CREATE TABLE dept_emp(emp_no INTEGER, 
                      dept_no VARCHAR(10),
                      from_date DATE,
                      to_date DATE);

CREATE TABLE dept_manager(dept_no VARCHAR(10), 
                    emp_no INTEGER, 
                    from_date DATE, 
                    to_date DATE);

CREATE TABLE employees(emp_no INTEGER, 
                       birth_date DATE,
                       first_name VARCHAR(30),
                       last_name VARCHAR(30),
                       gender VARCHAR(5),
                       hire_date DATE);

CREATE TABLE salaries(emp_no INTEGER,
                      salary INTEGER,
                      from_date DATE,
                      to_date DATE);

CREATE TABLE titles(emp_no INTEGER,
                    title VARCHAR(35),
                    from_date DATE,
                    to_date DATE);
