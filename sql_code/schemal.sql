Create table Departments(
	dept_no VARCHAR not NULL PRIMARY KEY,
	dept_name VARCHAR not NULL
);

Create table EmployeeDepartments(
	emp_no BIGINT not NULL,
	dept_no VARCHAR not NULL
);

Create table ManagersDepartments(
	dept_no VARCHAR not NULL,
	emp_no BIGINT not NULL PRIMARY KEY

);

Create table Employees(
	emp_no BIGINT not NULL PRIMARY KEY,
	emp_title_id VARCHAR not NULL,
	birth_date VARCHAR not NULL,
	first_name VARCHAR(50) not NULL,
	last_name VARCHAR(50) not NULL,
	sex VARCHAR(5) not NULL,
	hire_date VARCHAR not NULL
);

Create table Salaries(
	emp_no BIGINT not NULL PRIMARY KEY,
	salary BIGINT not NULL
);

Create table titles(
	title_id VARCHAR not NULL PRIMARY KEY,
	title VARCHAR(50) not NULL
);

ALTER table EmployeeDepartments ADD FOREIGN KEY (dept_no) REFERENCES Departments(dept_no);

ALTER table ManagersDepartments ADD FOREIGN KEY (dept_no) REFERENCES Departments(dept_no);

ALTER table Salaries ADD FOREIGN KEY (emp_no) REFERENCES Employees(emp_no);

ALTER table EmployeeDepartments ADD PRIMARY KEY(emp_no, dept_no);

ALTER table Employees ALTER COLUMN hire_date TYPE DATE USING hire_date::date;

ALTER table Employees ALTER COLUMN birth_date TYPE DATE USING birth_date::date;