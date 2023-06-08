USE employees;

# In your script, use DISTINCT to find the unique titles in the titles table.
# Add the date of birth for each employee as 'DOB' to the query.
# Update the query to format full name to include the employee number so it is formatted as 'employee number - last name, first name'.

SELECT CONCAT(emp_no, ' - ' , last_name, ' ', first_name) AS full_name, birth_date
FROM employees
GROUP BY emp_no, full_name, last_name
LIMIT 10;


