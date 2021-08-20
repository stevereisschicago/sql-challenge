-- SQL QUERIES 
-- To see Images of the code and data output      9 - SQL Homework - Steve Reiss.pdf 

-- —1—
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
;



-- —2—
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE EXTRACT(year from hire_date) = 1986
;



-- —3—
SELECT dept_manager.dept_no, departments.dept_name,
employees.emp_no, employees.first_name, employees.last_name 
FROM dept_manager
LEFT JOIN departments 
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no
;



-- —4—

SELECT 
employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp 
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
;



-- —5—

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';



-- —6—

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';



-- —7—

SELECT employees.emp_no, employees.last_name, 
employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';



-- —8—

SELECT count(last_name) as "no_count", last_name
FROM employees
GROUP BY last_name
ORDER BY no_count DESC
;
