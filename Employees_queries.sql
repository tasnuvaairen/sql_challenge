
1.
-- List the details of each employee number, last name, first name, gender, and salary

SELECT a.emp_no, a.last_name, a.first_name, a.gender, b.salary
FROM employees a
JOIN salaries b 
ON a.emp_no = b.emp_no

2. 
-- List employees who were hired in 1986.

SELECT first_name,last_name, hire_date
from Employees
WHERE hire_date like '1986%'

3.
-- List the manager of each department with  department number, department name, the manager's employee number, last name, first name, and start and end employment dates

SELECT a.dept_name, b.dept_no, b.emp_no, b.from_date, b.to_date, c.last_name, c.first_name
FROM Departments a
Inner JOIN Dept_manager b 
ON a.dept_no = b.dept_no
Inner JOIN Employees c
ON b.emp_no = c.emp_no

4.

--List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT b.emp_no, b.last_name, b.first_name, a.dept_name
FROM Departments a
LEFT JOIN Dept_emp c 
ON a.dept_no = c.dept_no
JOIN Employees b
ON b.emp_no = c.emp_no

5. 
-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * from Employees
WHERE first_name = 'Hercules'
and last_name like '%B%'

6.
-- List all employees in the Sales department, including their employee number, last name, first name, and department name

SELECT b.emp_no, b.last_name, b.first_name,  a.dept_name 
FROM Departments a
Inner JOIN Dept_emp c 
ON a.dept_no = c.dept_no
Inner JOIN Employees b
ON b.emp_no = c.emp_no
WHERE dept_name like '%Sales%'


7.
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name

SELECT b.emp_no, b.last_name, b.first_name,  a.dept_name 
FROM Departments a
Inner JOIN Dept_emp c 
ON a.dept_no = c.dept_no
inner JOIN Employees b
ON b.emp_no = c.emp_no
WHERE a.dept_name IN ('Sales','Development') 
 

8.
--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
SELECT distinct last_name,  count (*) 
from Employees
group by last_name
order by last_name desc


