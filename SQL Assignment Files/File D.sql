-- 	DB INITIALIZATION
CREATE DATABASE IF NOT EXISTS bank_info;
USE bank_info;

-- TABLE INITIALIZATION
-- Create the BANKS table
CREATE TABLE BANKS (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL
);

-- a. Add sample records to the BANKS table
INSERT INTO BANKS (CustomerID, Name, Age, Amount) VALUES
(1, 'John Doe', 45, 10000.00),
(2, 'Jane Smith', 38, 5000.00),
(3, 'Michael Brown', 50, 15000.00),
(4, 'Emily Davis', 42, 20000.00),
(5, 'Chris Wilson', 39, 8000.00);

-- b. Delete records of customers whose age is less than 40
DELETE FROM BANKS
WHERE Age < 40;

-- c. Change the name of the field 'Amount' to 'Deposit'
ALTER TABLE BANKS
CHANGE COLUMN Amount Deposit DECIMAL(10, 2);

-- d. Insert a field 'Address' between 'Name' and 'Age'
ALTER TABLE BANKS ADD COLUMN Address VARCHAR(255) NULL AFTER Name;

-- Update the table with addresses for the existing records as Sample Data
UPDATE BANKS
SET Address = '123 Main St, Springfield' WHERE CustomerID = 1;
UPDATE BANKS
SET Address = '456 Oak Ave, Riverside' WHERE CustomerID = 3;

-- Viewing Data
SELECT * FROM BANKS;
