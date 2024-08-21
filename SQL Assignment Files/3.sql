-- 	DB INITIALIZATION
CREATE DATABASE IF NOT EXISTS sales;
USE sales;

-- TABLE INITIALIZATION
-- a. Create the Invoice table
CREATE TABLE Invoice (
    InvoiceNumber INT PRIMARY KEY,
    Description VARCHAR(255) NOT NULL,
    Quantity INT NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL
);

-- b. Display the structure of the Invoice table
-- The DESCRIBE Command is used to view table structure only!, & not the data within.
DESCRIBE Invoice;

-- Insert sample data into the Invoice table
INSERT INTO Invoice (InvoiceNumber, invoice_date, Description, Quantity, Amount) VALUES
(1, '2024-01-15', 'Laptop', 2, 150000.00),
(2, '2024-02-20', 'Smartphone', 5, 80000.00),
(3, '2024-03-05', 'Office Chair', 10, 30000.00),
(4, '2024-07-18', 'Mouse', 25, 12500.00),
(5, '2024-08-15', 'Tablet', 6, 60000.00),
(6, '2024-09-01', 'Headphones', 12, 36000.00);

-- c. Remove all records whose amount is below 5000
DELETE FROM Invoice
WHERE Amount < 5000;

-- d. Insert invoice_date between InvoiceNumber and Description
ALTER TABLE Invoice ADD COLUMN invoice_date DATE NULL AFTER InvoiceNumber;

-- e. Display the total amount of all the records from the table
SELECT SUM(Amount) AS TotalAmount
FROM Invoice;