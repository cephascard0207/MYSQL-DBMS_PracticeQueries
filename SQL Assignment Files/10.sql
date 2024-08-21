-- 	DB INITIALIZATION
CREATE DATABASE IF NOT EXISTS Customer;
USE Customer;

-- TABLE INITIALIZATION
-- Create the Cust_tbl table
CREATE TABLE Cust_tbl (
    Customerid INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255) NOT NULL
);

-- Create the Bill_tbl table
CREATE TABLE Bill_tbl (
    Customerid INT,
    Productid INT,
    Quantity INT,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (Customerid) REFERENCES Cust_tbl(Customerid)
);

-- a. To list Customerid, Productid, Amount from Bill_tbl whose Amount exceeds 1,000
SELECT 
    Customerid,
    Productid,
    Amount
FROM Bill_tbl
WHERE Amount > 1000;

-- b. To enter a data record in Cust_tbl
-- Insert sample data into Cust_tbl
INSERT INTO Cust_tbl (Customerid, Name, Address) VALUES
(1, 'John Doe', '123 Elm Street, Springfield'),
(2, 'Jane Smith', '456 Oak Avenue, Springfield'),
(3, 'Jim Brown', '789 Pine Road, Springfield');

-- Insert sample data into Bill_tbl
INSERT INTO Bill_tbl (Customerid, Productid, Quantity, Amount) VALUES
(1, 101, 2, 1500.00),
(1, 102, 1, 750.00),
(2, 103, 5, 2000.00),
(3, 104, 3, 300.00);

-- c. To display all the records from multiple tables by combining Cust_tbl and Bill_tbl
SELECT 
    c.Customerid,
    c.Name,
    c.Address,
    b.Productid,
    b.Quantity,
    b.Amount
FROM Cust_tbl c
JOIN Bill_tbl b ON c.Customerid = b.Customerid;

-- d. To remove Address column from Cust_tbl
ALTER TABLE Cust_tbl DROP COLUMN Address;