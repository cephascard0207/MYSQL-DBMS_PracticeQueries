-- 	DB INITIALIZATION
CREATE DATABASE IF NOT EXISTS PayrollDB;
USE PayrollDB;

-- TABLE INITIALIZATION
-- Create the Payroll table
CREATE TABLE Payroll (
    Emp_id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    State VARCHAR(100) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);

-- Insert sample data into the Payroll table
INSERT INTO Payroll (Emp_id, Name, State, Salary) VALUES
(1, 'Alice Johnson', 'California', 70000.00),
(2, 'Bob Smith', 'Texas', 55000.00),
(3, 'Charlie Brown', 'New York', 45000.00),
(4, 'Diana Ross', 'California', 65000.00),
(5, 'Emily Davis', 'Texas', 75000.00);

-- a. Add the DESIGNATION column after the Name column
ALTER TABLE Payroll
ADD COLUMN DESIGNATION VARCHAR(10) AFTER Name;

-- b. Update the sample data with designations
-- Update the DESIGNATION for employee with Emp_id 1
UPDATE Payroll
SET DESIGNATION = 'Manager'
WHERE Emp_id = 1;

-- Update the DESIGNATION for employee with Emp_id 2
UPDATE Payroll
SET DESIGNATION = 'Programmer'
WHERE Emp_id = 2;

-- Update the DESIGNATION for employee with Emp_id 3
UPDATE Payroll
SET DESIGNATION = 'Analyst'
WHERE Emp_id = 3;

-- Update the DESIGNATION for employee with Emp_id 4
UPDATE Payroll
SET DESIGNATION = 'Manager'
WHERE Emp_id = 4;

-- Update the DESIGNATION for employee with Emp_id 5
UPDATE Payroll
SET DESIGNATION = 'Programmer'
WHERE Emp_id = 5;


-- c. Arrange records in descending order based on their salary
SELECT * FROM Payroll
ORDER BY Salary DESC;

-- d. Display all employees whose designation is Programmer and salary is more than 50,000
SELECT * FROM Payroll
WHERE DESIGNATION = 'Programmer' AND Salary > 50000;

-- e. Display the total number of employees from each state
SELECT State, COUNT(*) AS TotalEmployees
FROM Payroll
GROUP BY State;