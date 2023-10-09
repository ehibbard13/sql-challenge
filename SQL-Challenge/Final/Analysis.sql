SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees
LEFT JOIN salaries 
ON (employees.emp_no = salaries.emp_no)

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date like '%1986'

SELECT dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.last_name, employees.first_name
FROM dept_manager
LEFT JOIN departments 
ON (departments.dept_no = dept_manager.dept_no)
LEFT JOIN employees
ON (employees.emp_no = dept_manager.emp_no)

SELECT dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
LEFT JOIN departments
ON (departments.dept_no = dept_emp.dept_no)
LEFT JOIN employees
ON (employees.emp_no = dept_emp.emp_no)

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name like 'Hercules' and last_name like 'B%'

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
LEFT JOIN employees
ON (employees.emp_no = dept_emp.emp_no)
LEFT JOIN departments
ON (dept_emp.dept_no = departments.dept_no) 
WHERE dept_name like 'Sales'

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
LEFT JOIN employees
ON (employees.emp_no = dept_emp.emp_no)
LEFT JOIN departments
ON (dept_emp.dept_no = departments.dept_no) 
WHERE dept_name like 'Sales' or dept_name like 'Development'

SELECT last_name, COUNT(last_name) as "Count"
FROM employees
GROUP BY last_name
ORDER BY "Count" DESC

