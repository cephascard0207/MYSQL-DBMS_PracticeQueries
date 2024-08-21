-- DB INITIALIZATION
CREATE DATABASE IF NOT EXISTS Employee;
USE Employee;

-- TABLE INITIALIZATION
CREATE TABLE Emp_tbl(
	emp_id SERIAL PRIMARY KEY NOT NULL,
    emp_name VARCHAR(60) NOT NULL,
    address VARCHAR(300) NOT NULL,
    salary BIGINT NOT NULL,
    age SMALLINT NOT NULL
);

-- a) Enter a data record in Emp_tbl
-- Inserting data into the table with specified columns
INSERT INTO Emp_tbl (emp_name, address, dob, salary, age)
VALUES
("Cephas Cardozo", "Veroda, Cuncolim-Goa, 403703", '2000-08-13', 900000, 23),
("Jolny Fernandes", "KTC Bus Stand, Margao-Goa", '2005-07-01', 20000, 35),
("Andy Fernandes", "Colva Beach, Colva-Goa", '1995-05-10', 550000, 29),
("Afra D'Souza", "Fatorda, Margao-Goa", '1998-11-25', 750000, 26),
("Ryan D'Silva", "Vasco da Gama, Goa", '2003-02-17', 350000, 78),
("Sophie Mendes", "Panjim, Goa", '1997-09-30', 450000, 46),
("Michael D'Souza", "Margao, Goa", '1999-04-12', 500000, 25),
("Emily Roy", "Mapusa, Goa", '1996-12-05', 300000, 27),
("Aiden Pereira", "Benaulim, Goa", '2002-01-21', 150000, 22),
("Nina Thomas", "Dona Paula, Goa", '2004-06-15', 250000, 20);


-- b. List all the records from eEmp_tbl
SELECT * FROM Emp_tbl;

-- c. Add a coloum date of birth between address and salary 
ALTER TABLE Emp_tbl
ADD COLUMN dob DATE NULL AFTER address;

-- d. Display Employee_id and Names of employees whose age is less than 30
SELECT emp_id, emp_name
FROM Emp_tbl
WHERE age < 30;