USE employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
# SELECT d.dept_name AS 'Department Name',
#        CONCAT(first_name, ' ', last_name) AS 'Department Manager'
# FROM employees AS e
#     JOIN dept_manager AS dm on dm.emp_no = e.emp_no
#     JOIN departments AS d on dm.dept_no = d.dept_no
# WHERE dm.to_date = '9999-01-01'
# ORDER BY d.dept_name;

SELECT departments.dept_name AS 'Department',
       CONCAT(employees.first_name, ' ', last_name) AS 'Department Manager'
FROM departments
    JOIN dept_manager on dept_manager.dept_no = departments.dept_no
    JOIN employees on employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01';



# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name',
       CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM employees AS e
    JOIN dept_manager AS dm on dm.emp_no = e.emp_no
    JOIN departments AS d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT title, COUNT(title) AS 'Total'
FROM titles AS t
        JOIN dept_emp AS de ON t.emp_no = de.emp_no
        JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01' AND t.to_date = '9999-01-01'
GROUP BY title
ORDER BY total DESC;

# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name',
       CONCAT(first_name, ' ', last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM employees AS e
        JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
        JOIN departments AS d ON dm.dept_no = d.dept_no
        JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name .
SELECT CONCAT(e.first_name, ' ', e.last_name) as 'Employee',
       d.dept_name as Department,
       CONCAT(e2.first_name, ' ', e2.last_name) as 'Manager'
FROM dept_emp de
    JOIN employees as e on de.emp_no = e.emp_no
    JOIN departments as d on de.dept_no = d.dept_no
    JOIN dept_manager as dm on dm.dept_no = d.dept_no
        AND dm.to_date = '9999-01-01'
    JOIN employees as e2 on e2.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01'
