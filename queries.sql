
-- QUEARY 1
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s
on e.emp_no = s.emp_no


-- QUEARY 2
select first_name, last_name, hire_date
from employees e
where hire_date between '1986-01-01' and '1986-12-31'


-- QUEARY 3

select dm.emp_no, dm.dept_no, d.dept_name, e.last_name, e.first_name
from dept_manager dm
join departments d
on d.dept_no = dm.dept_no

join employees e
on dm.emp_no = e.emp_no


--  QUEARY 4

select d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de 
on e.emp_no = de.emp_no
join departments d 
on d.dept_no = de.dept_no

-- QUEARY 5

SELECT first_name, last_name, sex 
FROM employees 
WHERE first_name = 'Hercules' and last_name like '%B%'

-- QUEARY 6

SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales'


-- QUEARY 7

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Development' OR d.dept_name = 'Sales'

-- QUEARY 8

SELECT COUNT (*), last_name
FROM employees 
GROUP BY last_name
ORDER BY COUNT(*) DESC