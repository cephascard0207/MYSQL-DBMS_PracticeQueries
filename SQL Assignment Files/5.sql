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

-- Insert sample data into the PAY table
INSERT INTO PAY (EmployeeID, Name, date_of_birth, salary) VALUES
(1, 'Alice Johnson', '1985-03-25', 70000.00),
(2, 'Bob Smith', '1990-07-18', 50000.00),
(3, 'Charlie Brown', '1982-11-12', 65000.00),
(4, 'Diana Ross', '1995-05-20', 55000.00),
(5, 'Emily Davis', '1988-09-10', 72000.00);

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
SELECT * FROM PAY_tbl;