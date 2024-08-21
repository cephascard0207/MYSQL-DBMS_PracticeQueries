-- 	DB INITIALIZATION
CREATE DATABASE IF NOT EXISTS Employee;
USE Employee;

-- TABLE INITIALIZATION
-- a. To create a table & insert data
CREATE TABLE Salary (
    EmployeeId INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    BasicSalary DECIMAL(10, 2) NOT NULL
);

INSERT INTO Salary (EmployeeId, Name, BasicSalary)
VALUES
(2, 'Jolny Fernandes', 520000.00),
(3, 'Andy Fernandes', 450000.00),
(4, 'Afra D\'Souza', 600000.00),
(5, 'Ryan D\'Silva', 310000.00),
(6, 'Sophie Mendes', 470000.00),
(7, 'Michael D\'Souza', 490000.00),
(8, 'Emily Roy', 380000.00),
(9, 'Aiden Pereira', 410000.00),
(10, 'Nina Thomas', 530000.00);


-- b. To view all the records from the table. 
SELECT * FROM Salary;

-- c. To display highest salary
SELECT MAX(BasicSalary) AS HighestSalary
FROM Salary;

-- d. To remove column Name from table.
ALTER TABLE Salary
DROP COLUMN Name;