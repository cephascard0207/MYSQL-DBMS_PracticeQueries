-- 	DB INITIALIZATION
CREATE DATABASE IF NOT EXISTS student_info;
USE student_info;

-- TABLE INITIALIZATION
-- Create the Student table
CREATE TABLE Student (
    Roll_no INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    DOB DATE NOT NULL,
    Age INT NOT NULL
);

-- Insert sample data into the Student table
INSERT INTO Student (Roll_no, Name, DOB, Age) VALUES
(1, 'Anmol', '2000-01-01', 24),
(2, 'Bina', '1999-12-15', 24),
(3, 'Chirag', '2001-05-23', 23),
(4, 'Disha', '2002-12-05', 21),
(5, 'Esha', '2003-11-30', 20);

-- a. Display name, date of birth, and the day of the week on which the student was born
SELECT 
    Name, 
    DOB AS DayOfWeek
    FROM Student;

-- b. Display name and age of each student
SELECT 
    Name,
    Age
FROM Student;

-- c. Display names of all students who are born in December
SELECT 
    Name
FROM Student
WHERE MONTH(DOB) = 12;

-- d. Change the date of birth of a student named "Anmol" to 01 Jan 2000
UPDATE Student
SET DOB = '2000-01-01'
WHERE Name = 'Anmol';