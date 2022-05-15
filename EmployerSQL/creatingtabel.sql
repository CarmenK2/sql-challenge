
--Create new table for Deparment
create table department (
	dept_no varchar (10) primary key,
	dept_name varchar (30)
);
--Import data from csv file and display the data
select * from department;

--Create new table for Titles
create table titles (
	title_id varchar (10) primary key,
	title varchar (30)
);

--Import data from csv file and display the data
select * from titles;

--Create new table for Employees
create table employees (
	emp_no int primary key,
	emp_title_id varchar (30),
	birth_date varchar not null,
	first_name varchar (30) not null,
	last_name varchar (30) not null,
	sex varchar (5),
	hire_date varchar not null,
	hire_year varchar not null,
	foreign key (emp_title_id) references titles (title_id)
);

--Import data from csv file and display the data
select * from employees;

--Create new table for Dept_Emp
create table dept_emp (
	emp_no int,
	dept_no varchar (10) not null,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references department (dept_no),
	primary key (emp_no, dept_no)
);

--Import data from csv file and display the data
select * from dept_emp;

--Create new table for Salaries
create table salaries (
	emp_no int not null,
	salary int not null,
	foreign key (emp_no) references employees (emp_no)
);

select * from salaries;

--Create new table for Dept_manager
create table dept_manager (
	dept_no varchar(10) not null,
	emp_no int not null,
	foreign key (dept_no) references department (dept_no),
	foreign key (emp_no) references employees (emp_no),
	primary key (dept_no, emp_no)
);

--Import data from csv file and display the data
select * from dept_manager;

----Review the data table
select * from department;
select * from titles;
select * from employees;
select * from dept_emp;
select * from salaries;
select * from dept_manager;