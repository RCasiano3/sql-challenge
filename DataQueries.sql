-- Query to list the employee number, last name, first name, sex, and salary of each employee.
select employees.emp_no, 
	employees.last_name,
	employees.first_name, 
	employees.sex, 
	salaries.salary
from employees 
join salaries 
on salaries.emp_no = employees.emp_no
order by last_name;

--Query to list the first name, last name and hire date for the employees who were hired in 1986
select emp_no, last_name, first_name
from employees
where hire_date >= '01/01/1986'
and hire_date <= '12/31/1986'
Order by hire_date;

--Query to list the manager of each dept with dept number, dept name, employee number, last name and first name
select employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	dept_manager.dept_no, 
	departments.dept_name
from employees 
join dept_manager 
on dept_manager.emp_no = employees.emp_no
join departments 
on departments.dept_no = dept_manager.dept_no
order by emp_no;

--Query to list the dept number for each employee with employee number, last name, first name and dept name
select dept_emp.dept_no, 
	dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
from employees
join dept_emp 
on dept_emp.emp_no = employees.emp_no
join departments
on departments.dept_no = dept_emp.dept_no
order by emp_no;

--Query to list first, last name and sex of all employees whose first name is Hercules and last name begins with letter B
select first_name, last_name, sex 
from employees 
where first_name = 'Hercules'
and last_name 
similar to '(B%)'
Order by last_name;

--Query to list each employee in the Sales dept with employee number, last name and first name
select dept_emp.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
from dept_emp
join employees 
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' 
or departments.dept_name = 'Development' 
order by emp_no;
	
--Query to list the frequency counts in descending order for all employee last names
select last_name, count(last_name) as "Frequency Count"
from employees
group by last_name
order by count(last_name) desc;
