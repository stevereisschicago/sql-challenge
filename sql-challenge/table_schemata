-- Creating Tables


-- employees.csv   

DROP TABLE employees

CREATE TABLE employees (
emp_no  INT NOT NULL,
emp_title_id VARCHAR (10) NOT NULL,
birth_date DATE,
first_name VARCHAR (25) NOT NULL,
last_name VARCHAR(25) NOT NULL,  
sex VARCHAR (2) NOT NULL ,
hire_date DATE,
PRIMARY KEY (emp_no)
);



-- departments.csv

DROP TABLE departments

CREATE TABLE departments (
dept_no VARCHAR (10),
dept_name VARCHAR(25),
PRIMARY KEY (dept_no)
);



-- dept_emp.csv

DROP TABLE dept_emp

CREATE TABLE dept_emp (
emp_no  INT NOT NULL,
dept_no VARCHAR (10) NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);



-- dept_manager.csv

DROP TABLE dept_manager

CREATE TABLE dept_manager (
dept_no VARCHAR(10),
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);



-- salaries.csv

DROP TABLE salaries

CREATE TABLE salaries (
emp_no INT,
salary INT,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);



-- titles.csv

DROP TABLE titles

CREATE TABLE titles (
title_id VARCHAR (10),
title VARCHAR (25)
);



-- UNIQUE testing for primary key columns

SELECT count(dept_no) FROM departments
WHERE dept_no = Null;

SELECT count (emp_no) FROM employees
WHERE emp_no = Null;

-- No Nulls for employees— (NOTE, primary keys cannot have nulls, just checking)
-- No Nulls for  departments


SELECT COUNT(emp_no) 
FROM employees 
GROUP BY emp_no
ORDER BY emp_no desc;

SELECT COUNT(dept_no)
FROM departments
GROUP BY dept_no
ORDER BY dept_no desc;

-- No dups for employees— (NOTE, primary keys cannot have dups, just checking)
-- No dups for  departments

