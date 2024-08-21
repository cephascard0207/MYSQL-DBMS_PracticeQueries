-- 	DB INITIALIZATION
CREATE DATABASE IF NOT EXISTS payments;
USE payments;

-- TABLE INITIALIZATION

-- a. Create the PAY table
CREATE TABLE PAY (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);

-- b. Display total salary of employees
SELECT SUM(salary) AS TotalSalary
FROM PAY;

-- c. Display EmployeeID, Name, and salary in descending order of Name
SELECT EmployeeID, Name, salary
FROM PAY
ORDER BY Name DESC;

-- d. Change the name of the table PAY to PAY_tbl
RENAME TABLE PAY TO PAY_tbl;

-- Viewing Data
SELECT * FROM PAY;