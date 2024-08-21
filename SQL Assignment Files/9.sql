-- 	DB INITIALIZATION
CREATE DATABASE IF NOT EXISTS InventoryDB;
USE InventoryDB;

-- TABLE INITIALIZATION
-- Create the Inventory table
CREATE TABLE Inventory (
    itemid INT PRIMARY KEY,
    itemname VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    qty INT NOT NULL
);

-- Insert sample data into the Inventory table
INSERT INTO Inventory (itemid, itemname, price, qty) VALUES
(1, 'Laptop', 120000.00, 7),
(2, 'Mouse', 500.00, 15),
(3, 'Keyboard', 800.00, 12),
(4, 'Monitor', 25000.00, 8),
(5, 'Transistor', 50.00, 25),
(6, 'Printer', 15000.00, 4),
(7, 'External Hard Drive', 8000.00, 6);

-- a. To arrange the records as per price in descending order
SELECT * 
FROM Inventory
ORDER BY price DESC;

-- b. Display itemid, itemname of all the items where quantity is between 5 to 10
SELECT itemid, itemname
FROM Inventory
WHERE qty BETWEEN 5 AND 10;

-- c. To remove the records where itemname is “Transistor”
DELETE FROM Inventory WHERE itemname = 'Transistor';

-- d. Display name of all items whose price is greater than 10000
SELECT itemname
FROM Inventory
WHERE price > 10000;
