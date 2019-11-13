CREATE TABLE departments (
	dept_no VARCHAR (4) PRIMARY KEY,
	dept_name VARCHAR (50) UNIQUE NOT NULL
);


CREATE TABLE employees (
	emp_no serial PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50),
	gender VARCHAR(1) CHECk (gender='F' or gender = 'M'),
	hire_date DATE CHECK (hire_date > birth_date)
);


CREATE TABLE dept_manager (
  dept_no VARCHAR(4) NOT NULL,	
  emp_no integer NOT NULL,	
	from_date DATE NOT NULL,
	to_date DATE,
	PRIMARY KEY (emp_no, dept_no),
	CONSTRAINT dept_manager_emp_no_fkey FOREIGN KEY (emp_no)
        REFERENCES employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT dept_manager_dept_no_fkey FOREIGN KEY (dept_no)
        REFERENCES departments (dept_no) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
);


CREATE TABLE dept_employees (
	emp_no integer NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE,
	PRIMARY KEY (emp_no, dept_no),
	CONSTRAINT dept_manager_emp_no_fkey FOREIGN KEY (emp_no)
        REFERENCES employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT dept_manager_dept_no_fkey FOREIGN KEY (dept_no)
        REFERENCES departments (dept_no) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
);


CREATE TABLE salaries (
	emp_no integer NOT NULL,
	salary numeric NOT NULL CHECK(salary>0),
	from_date DATE NOT NULL,
	to_date DATE,
	CONSTRAINT salaries_emp_no_fkey FOREIGN KEY (emp_no)
        REFERENCES employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
);