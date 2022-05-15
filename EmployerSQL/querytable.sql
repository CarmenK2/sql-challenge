---1. List the following details of each employee: employee number, last name, first name, sex, and salary.
Create view Salary_by_Employees as
select e.emp_no,e.last_name,e.first_name, e.sex, s.salary
From Employees as e
join salaries as s on e.emp_no = s.emp_no;

Select * from Salary_by_Employees;

---2. List first name, last name, and hire date for employees who were hired in 1986.
Select first_name,last_name, hire_date
INTO Employees_in_EightySix
From Employees
Where hire_year ='1986';



---3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select dept_m.dept_no,dept.dept_name,dept_m.emp_no,e.last_name,e.first_name
From dept_manager AS dept_m
join department AS dept
on (dept_m.dept_no=dept.dept_no)
join employees AS e


---4.List the department of each employee with the following information: employee number, last name, first name, and department name.
Create View List_dep_all_employees AS
Select e.emp_no,e.last_name,e.first_name,dept.dept_name
from employees AS e
join dept_emp AS demp
on (e.emp_no=demp.emp_no)
join department AS dept
on (dept.dept_no=demp.dept_no)

select * from list_dep_all_employees;


--- 5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select first_name,last_name,sex
From employees
where first_name = 'Hercules'
AND last_name like 'B%';

--- 6.List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select e.emp_no,e.last_name,e.first_name,d.dept_name
From employees AS e
inner join dept_emp AS de 
on e.emp_no = de.emp_no
join department AS d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales';


---7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select e.emp_no,e.last_name,e.first_name,d.dept_name
INTO SALES_DEV_DEP
From employees AS e
inner join dept_emp AS de 
on e.emp_no = de.emp_no
join department AS d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales'
OR d.dept_name ='Development';


---8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select first_name, count(first_name) AS "Firstname_Count"
From employees
Group by first_name
order by first_name desc;

