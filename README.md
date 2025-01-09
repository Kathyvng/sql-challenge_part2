# sql-challenge_part2

# Employee Database Research Project

## Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

## Before You Begin
1. Create a new repository for this project called `sql-challenge`.
2. Do not add this assignment to an existing repository.
3. Clone the new repository to your computer.
4. Inside your local Git repository, create a directory for this Challenge. Use a folder name that corresponds to the Challenge, such as `EmployeeSQL`.
5. You’ll add your files to this folder and push the changes to GitHub.

## Deliverables
The following files are used for this project:

- Six CSV files containing employee data found in `EmployeeSQL/` folder:
  - `departments.csv`
  - `employees.csv`
  - `dept_emp.csv`
  - `emp_details.csv`
  - `salaries.csv`
  - `titles.csv`
- `QuickDBD-EmployeeSQL.png` for the ERD Diagram of the database
- `QuickDBD-EmployeeSQL.sql` for the schema of the database
- `EmployeeSQL_Data_Analysis.sql` for the data analysis SQL queries

## Instructions

This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

### Data Modeling:
- Inspect the CSV files and sketch an Entity Relationship Diagram (ERD) of the tables. You can use tools like [QuickDBD](https://www.quickdatabasediagrams.com/) to create the ERD.
  
### Data Engineering: 
1. **Table Schema Creation**:  
   Use the provided information to create a table schema for each of the six CSV files. Ensure you define:
   - Data types (e.g., `INT`, `VARCHAR`, `DATE`, etc.)
   - Primary keys
   - Foreign keys
   - Constraints (e.g., `NOT NULL`, `UNIQUE`)
   
2. **Composite Keys**:  
   If necessary, create composite keys by combining two columns to uniquely identify a row.

3. **Table Creation Order**:  
   Create the tables in the correct order to handle foreign key relationships. Ensure that the tables with foreign keys are created after their referenced tables.

4. **CSV Import**:  
   Import each CSV file into its corresponding SQL table. Be sure to:
   - Use the correct import order to avoid foreign key issues.
   - Account for headers in the CSV files when importing.

### Data Analysis: 
Once the data is imported, use SQL queries to answer the following questions:

1. **Employee Details**:  
   List the employee number, last name, first name, sex, and salary of each employee.

2. **Employees Hired in 1986**:  
   List the first name, last name, and hire date for the employees who were hired in 1986.

3. **Manager and Department Details**:  
   List the manager of each department, along with their department number, department name, employee number, last name, and first name.

4. **Employee and Department Info**:  
   List the department number for each employee, along with that employee’s employee number, last name, first name, and department name.

5. **Employees Named Hercules**:  
   List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. **Sales Department Employees**:  
   List each employee in the Sales department, including their employee number, last name, and first name.

7. **Sales and Development Employees**:  
   List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. **Employee Last Name Frequency Count**:  
   List the frequency counts, in descending order, of all the employee last names (i.e., how many employees share each last name).

Code Source: https://bootcampspot.instructure.com/courses/6252/external_tools/313
