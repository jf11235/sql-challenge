--creating a table for departments

CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL 
);

--creating a table for titles
CREATE TABLE titles (
    title_id VARCHAR (10) NOT NULL PRIMARY KEY,
    title VARCHAR (30) NOT NULL
);


--creating a table for employees
CREATE TABLE employees(
    emp_no INT NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR (10) NOT NULL,
    birth_date DATE,
    first_name VARCHAR(20),
    last_name VARCHAR (20),
    sex VARCHAR (1),
    hire_date DATE,
    FOREIGN KEY (emp_title_id)
    REFERENCES titles(title_id)
);


--creating a table for deptartment employees
--the only way i can get it to import the csv is to create the table without a primary key. 
--the import fails whenever i have a primary key anywhere. but im reading that every table should have a primary key
CREATE TABLE dept_emp (
	emp_no INT NOT NULL PRIMARY KEY,
	dept_no VARCHAR (10) NOT NULL,
	FOREIGN KEY (dept_no)
	REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no)
	REFERENCES employees(emp_no)
);





--creating a table for department managers
--the only way i can get it to import the csv is to create the table without a primary key. 
--the import fails whenever i have a primary key anywhere. but im reading that every table should have a primary key
CREATE TABLE dept_manager (
    dept_no VARCHAR (10) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no)
    REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
);






--creating a table for salaries
CREATE TABLE salaries (
    emp_no INT NOT NULL PRIMARY KEY,
    salary MONEY NOT NULL, 
    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
);


