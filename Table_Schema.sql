CREATE TABLE titles (
    title_id varchar   NOT NULL,
    title varchar   NOT NULL,
    CONSTRAINT fk_titles PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no int   NOT NULL,
    emp_title_id varchar   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex varchar   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT fk_employees PRIMARY KEY (emp_no),
	foreign key (emp_title_id) references titles (title_id)
);

CREATE TABLE departments (
    dept_no varchar   NOT NULL,
    dept_name varchar   NOT NULL,
    CONSTRAINT fk_departments PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager (
    dept_no varchar   NOT NULL,
    emp_no integer   NOT NULL,
    CONSTRAINT fk_dept_manager PRIMARY KEY (emp_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

CREATE TABLE dept_emp (
    emp_no integer   NOT NULL,
    dept_no varchar   NOT NULL,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary integer   NOT NULL,
    CONSTRAINT fk_salaries PRIMARY KEY (emp_no)
);

select emp_no, emp_title_id
from employees
where emp_no = 10010;