-- Create Database

CREATE DATABASE mydb;
USE mydb;
DROP DATABASE mydb;

-- Create Table

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    gpa DECIMAL(3,2)
);

-- View All Tables

SHOW TABLES;

-- Delete Table

DROP TABLE students;

-- Modify Table

ALTER TABLE students ADD age INT;
ALTER TABLE students DROP COLUMN age;
ALTER TABLE students MODIFY name VARCHAR(100);

-- Insert Data

INSERT INTO students (id, name, gpa)
VALUES (1, 'Sujal', 8.7);

-- Select everything

SELECT * FROM students;

-- Select specific columns

SELECT name, gpa FROM students;

-- Filtering (WHERE)

SELECT * FROM students WHERE gpa > 8.0;

-- Sorting

SELECT * FROM students ORDER BY gpa DESC;

-- Limit rows

SELECT * FROM students LIMIT 5;

-- Update Data

UPDATE students 
SET gpa = 9.1 
WHERE id = 1;

-- Delete Data

DELETE FROM students WHERE id = 1;

-- Aggregate Functions

SELECT COUNT(*) FROM students;
SELECT AVG(gpa) FROM students;
SELECT MAX(gpa) FROM students;
SELECT MIN(gpa) FROM students;

-- Group By

SELECT major, COUNT(*) 
FROM students 
GROUP BY major;

-- Inner Join

SELECT s.name, p.program_name
FROM students s
INNER JOIN programs p 
ON s.id = p.student_ref_id;

-- Left Join

SELECT s.name, p.program_name
FROM students s
LEFT JOIN programs p 
ON s.id = p.student_ref_id;

-- Create Index

CREATE INDEX idx_name ON students(name);
