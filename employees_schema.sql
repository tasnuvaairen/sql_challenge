-- Drop table
DROP table Departments

-- Create a new table
CREATE TABLE Departments (
  dept_no VARCHAR PRIMARY KEY,
  dept_name VARCHAR (30)
);
 
-- Query all fields from the table
SELECT * FROM Departments;

-- Drop table
DROP table Dept_emp

-- Create a new table
CREATE TABLE Dept_emp (
  emp_no INT,	
  FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),	
  dept_no VARCHAR,
  FOREIGN KEY (dept_no)	REFERENCES Departments(dept_no),
  from_date VARCHAR(30),
  to_date VARCHAR(30),
  PRIMARY KEY (dept_no)		
);

-- Query all fields from the table
SELECT * FROM Dept_emp;

-- Drop table
DROP table Dept_manager

-- Create a new table
CREATE TABLE Dept_manager (	
  dept_no VARCHAR,
  FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),	
  emp_no INT,
  FOREIGN KEY (emp_no) REFERENCES Dept_emp(emp_no),	
  from_date VARCHAR(30),
  to_date VARCHAR(30),
  PRIMARY KEY (dept_no, emp_no)	
);

-- Query all fields from the table
SELECT * FROM Dept_manager;

-- Drop table
DROP table Employees

-- Create a new table
CREATE TABLE Employees (	
  emp_no INT PRIMARY KEY,	
  birth_date VARCHAR,
  first_name VARCHAR,
  last_name VARCHAR, 
  gender VARCHAR,
  hire_date VARCHAR,
  
);
  
-- Query all fields from the table  
SELECT * from Employees  
  
-- Drop table
DROP table Salaries

-- Create a new table
CREATE TABLE Salaries(
  emp_no INT,
  FOREIGN KEY (emp_no) REFERENCES Dept _emp(emp_no) 	
  salary VARCHAR,
  from_date VARCHAR(30),
  to_date VARCHAR(30),
  PRIMARY KEY (emp_no) 	
);

-- Query all fields from the table
SELECT * FROM Salaries;  
  
-- Drop table
DROP table Titles

-- Create a new table
CREATE TABLE Titles(
  emp_no INT,
  FOREIGN KEY (emp_no) REFERENCES Dept _emp(emp_no)	
  title VARCHAR,
  from_date VARCHAR(30),
  to_date VARCHAR(30)
  PRIMARY KEY (emp_no)	
);

-- Query all fields from the table
SELECT * FROM Titles;