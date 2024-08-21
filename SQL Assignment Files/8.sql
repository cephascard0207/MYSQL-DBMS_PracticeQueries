-- 	DB INITIALIZATION
CREATE DATABASE IF NOT EXISTS Employee;
USE Employee;

-- TABLE INITIALIZATION
-- Create the E_tbl table
CREATE TABLE E_tbl (
    Emp_id INT PRIMARY KEY,
    Emp_Name VARCHAR(100) NOT NULL,
    Dob DATE NOT NULL,
    State VARCHAR(100) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);

-- Insert sample data into the E_tbl table
INSERT INTO E_tbl (Emp_id, Emp_Name, Dob, State, Salary) VALUES
(1, 'Alice Johnson', '1985-07-15', 'California', 70000.00),
(2, 'Bob Smith', '1990-05-23', 'Texas', 55000.00),
(3, 'Charlie Brown', '1988-03-12', 'New York', 30000.00),
(4, 'Diana Ross', '1992-11-25', 'California', 25000.00),
(5, 'Emily Davis', '1994-02-10', 'Texas', 45000.00);

-- a. Display Emp_id, Emp_Name, and Salary in descending order of Emp_Name
SELECT 
Emp_id,
Emp_Name,
Salary
FROM E_tbl
ORDER BY Emp_Name DESC;

-- b. Display state and the total number of employees from each state
SELECT State,
COUNT(*) AS TotalEmployees
FROM E_tbl
GROUP BY State;

-- c. Insert another field 'Gender' in the table with length 6 and of CHAR data type, after Emp_Name
ALTER TABLE E_tbl
ADD COLUMN Gender CHAR(6) AFTER Emp_Name;

-- d. Change the value of the field 'Dob' to 2012-10-12 for employees whose Salary is greater than 25000
UPDATE E_tbl
SET Dob = '2012-10-12'
WHERE Salary > 25000;