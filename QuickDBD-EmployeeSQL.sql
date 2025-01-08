-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/

-- Import CSV data Order:
-- 1. departments
-- 2. titles
-- 3. employees
-- 4. salaries
-- 5. dept_emp
-- 6. dept_manager

-- 1. Create departments table
CREATE TABLE departments (
    dept_no varchar(50) NOT NULL,
    dept_name varchar(255) NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);

-- 2. Create titles table
CREATE TABLE titles (
    title_id varchar(50) NOT NULL,
    title varchar(255) NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (title_id)
);

-- 3. Create employees table
CREATE TABLE employees (
    emp_no int NOT NULL,
    emp_title_id varchar(50) NOT NULL,
    birth_date date NOT NULL,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    sex text NOT NULL,
    hire_date date NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (emp_no),
    CONSTRAINT fk_employees_emp_title_id FOREIGN KEY (emp_title_id)
        REFERENCES titles (title_id)
);

-- 4. Create salaries table
CREATE TABLE salaries (
    emp_no int NOT NULL,
    salary int NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (emp_no),
    CONSTRAINT fk_salaries_emp_no FOREIGN KEY (emp_no)
        REFERENCES employees (emp_no)
);

-- 5. Create dept_emp table
CREATE TABLE dept_emp (
    emp_no int NOT NULL,
    dept_no varchar(50) NOT NULL,
    CONSTRAINT pk_dept_emp PRIMARY KEY (emp_no, dept_no), -- Composite primary key
    CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY (emp_no)
        REFERENCES employees (emp_no),
    CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY (dept_no)
        REFERENCES departments (dept_no)
);

-- 6. Create dept_manager table
CREATE TABLE dept_manager (
    dept_no varchar(50) NOT NULL,
    emp_no int NOT NULL,
    CONSTRAINT pk_dept_manager PRIMARY KEY (dept_no, emp_no), -- Composite primary key
    CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY (dept_no)
        REFERENCES departments (dept_no),
    CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY (emp_no)
        REFERENCES employees (emp_no)
);
