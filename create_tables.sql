--creating a table for departments

CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL 
);

--creating a table for deptartment employees
CREATE TABLE dept_emp (
	emp_no VARCHAR (10) NOT NULL PRIMARY KEY,
	dept_no VARCHAR (10) NOT NULL,
	FOREIGN KEY (dept_no)
	REFERENCES departments(dept_no)
);

--creating a table for titles
CREATE TABLE titles (
    title_id VARCHAR (10) NOT NULL PRIMARY KEY,
    title VARCHAR (10) NOT NULL
);

--creating a table for employees
CREATE TABLE employees(
    emp_no VARCHAR (10) NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR (10) NOT NULL,
    birth_date VARCHAR(10),
    first_name VARCHAR(20),
    last_name VARCHAR (20),
    sex VARCHAR (1),
    hire_date DATE,
    FOREIGN KEY (emp_title_id)
    REFERENCES titles(title_id)
);


--creating a table for department managers
CREATE TABLE dept_manager (
    dept_no VARCHAR (10) NOT NULL PRIMARY KEY,
    emp_no VARCHAR (10) NOT NULL,
    FOREIGN KEY (dept_no)
    REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no),
    FOREIGN KEY (emp_no)
    REFERENCES dept_emp(emp_no)
);





--creating a table for salaries
CREATE TABLE salaries (
    emp_no VARCHAR (10) NOT NULL PRIMARY KEY,
    salary MONEY NOT NULL, 
    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
);


