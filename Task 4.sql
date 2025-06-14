USE new_schema;
SELECT * FROM courses_data;
SELECT Credits FROM courses_data;
USE hsareen;
SELECT * FROM student_information;
SELECT DISTINCT Department FROM student_information;
SELECT GPA AS "Grade Point Average" FROM student_information;
USE new_schema;
SELECT c.Credits, e.Grade, s.GPA
FROM courses_data AS c, enrollments_data AS e, student_information AS s;
USE hsareen;
CREATE TABLE table_truncate( Gender varchar(255), Age integer);
INSERT INTO table_truncate
VALUES('Male', 45),
('Female', 27),
('Male', 33),
('Female', 38);
SELECT * FROM table_truncate;
TRUNCATE TABLE table_truncate;
CREATE TABLE table_check(ID integer NOT NULL, Gender Varchar(255), Salary integer, UNIQUE (ID), CHECK(Salary >=10000));
DESC table_check;
INSERT INTO table_modify_col(Age, StudentNames)
VALUES(18.43,'Alex'),
(27.56,'Akash'),
(21.45,'Ramisha');
ALTER TABLE table_modify_col
MODIFY COLUMN Age integer;
DESC table_modify_col;
SELECT * FROM table_modify_col;
CREATE TABLE table_constraint(StudentID integer, StudentNames varchar(255), Age integer);
INSERT INTO table_constraint
Values(1, "Alex", 18.43),
(2, "Akash", 27.56),
(3, "Ramisha", 21.45);
ALTER TABLE table_constraint
ADD CONSTRAINT StudentID primary key(StudentID);


DESC table_constraint;

create table table_fk(CourseID integer, CourseNames varchar(255));
INSERT INTO table_fk
Values(11, "English"),
(12, "Math"),
(13, "Language");

ALTER TABLE table_fk
add constraint CourseID primary key(CourseID);

create table table_pk( StudentID integer, CourseID integer, StudentNames varchar(255), Age integer);
INSERT INTO table_pk
VALUES(1, 11, "Alex", 18.43),
(2, 12, "Akash", 27.56),
(3, 13, "Ramisha", 21.45);
ALTER TABLE table_pk
ADD CONSTRAINT StudentID primary key(StudentID);
ALTER TABLE table_pk
ADD CONSTRAINT CourseID foreign key(CourseID) references table_fk(CourseID);
DESC table_pk;

USE hsareen;
create table drop_constraint(StudentID integer, StudentNames varchar (255), Age integer);
INSERT INTO drop_constraint
VALUES(1, "Alex", 18.43),
(2, "Akash", 27.56),
(3, "Ramisha", 21.45);
ALTER TABLE drop_constraint
ADD CONSTRAINT StudentID PRIMARY KEY (StudentID);
ALTER TABLE drop_constraint
DROP PRIMARY KEY;
DESC drop_constraint;
CREATE TABLE drop_idx_tab(StudentID integer, StudentNames varchar(255), Age integer);
INSERT INTO drop_idx_tab
VALUES(1, "Alex", 18),
(2, "Akash", 27),
(3, "Ramisha", 21);
CREATE UNIQUE INDEX idx_unique
ON drop_idx_tab(StudentID);
ALTER TABLE drop_idx_tab
DROP INDEX idx_unique;
DESC drop_idx_tab;
CREATE DATABASE filtering_database;
USE filtering_database;
CREATE TABLE cust_info (
    CustomersID INT AUTO_INCREMENT PRIMARY KEY,
    CustomersNames VARCHAR(100),
    Address VARCHAR(255),
    Spending DECIMAL(10, 2)
);
 
-- Insert 10 values for each variable
INSERT INTO cust_info (CustomersNames, Address, Spending) VALUES
('John Doe', '123 Main St', 100.50),
('Alice Smith', '456 Elm St', 200.75),
('Bob Johnson', '789 Oak St', 150.25),
('Emily Brown', '321 Pine St', 75.00),
('Michael Davis', '654 Maple St', 300.00),
('Sarah Wilson', '987 Cedar St', 50.50),
('David Lee', '741 Birch St', 180.25),
('Jessica Taylor', '852 Walnut St', 220.75),
('Chris Evans', '369 Spruce St', 125.00),
('Emma Thompson', '159 Fir St', 350.25);
SELECT *
FROM cust_info
WHERE CustomersID IN (1,2,4);
SELECT char_length(CustomersNames) AS LengthOfString
FROM cust_info;
-- Create the table
CREATE TABLE cust_info_2 (
    CustomersID INT AUTO_INCREMENT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50),
    Address VARCHAR(255),
    Spending DECIMAL(10, 2)
);
 
-- Insert 10 values for each variable
INSERT INTO cust_info_2 (FirstNames, LastNames, Address, Spending) VALUES
('John', 'Doe', '123 Main St', 100.50),
('Alice', 'Smith', '456 Elm St', 200.75),
('Bob', 'Johnson', '789 Oak St', 150.25),
('Emily', 'Brown', '321 Pine St', 75.00),
('Michael', 'Davis', '654 Maple St', 300.00),
('Sarah', 'Wilson', '987 Cedar St', 50.50),
('David', 'Lee', '741 Birch St', 180.25),
('Jessica', 'Taylor', '852 Walnut St', 220.75),
('Chris', 'Evans', '369 Spruce St', 125.00),
('Emma', 'Thompson', '159 Fir St', 350.25);
SELECT concat(FirstNames, " ", LastNames) AS  NewCustomersNames
FROM cust_info_2;
-- Create the table
CREATE TABLE exam_info (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50),
    Scores integer
);
 
-- Insert 10 values for each variable
INSERT INTO exam_info (FirstNames, LastNames, Scores) VALUES
('John', 'Doe',  80),
('Alice', 'Smith',  75),
('Bob', 'Johnson',  78),
('Emily', 'Brown',  60),
('Michael', 'Davis', 86),
('Sarah', 'Wilson', 90),
('David', 'Lee', 75),
('Jessica', 'Taylor', 75),
('Chris', 'Evans',  55),
('Emma', 'Thompson',  67);
SELECT Scores DIV 10 AS DividedScores
FROM exam_info;
USE hsareen;
-- Create the table
CREATE TABLE exam_info (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50),
    Scores integer
);
 
-- Insert 10 values for each variable
INSERT INTO exam_info (FirstNames, LastNames, Scores) VALUES
('John', 'Doe',  80),
('Alice', 'Smith',  75),
('Bob', 'Johnson',  78),
('Emily', 'Brown',  60),
('Michael', 'Davis', 86),
('Sarah', 'Wilson', 90),
('David', 'Lee', 75),
('Jessica', 'Taylor', 75),
('Chris', 'Evans',  55),
('Emma', 'Thompson',  67);
SELECT POWER(Scores, 3) AS CubeScores
FROM exam_info;

-- Create the table
CREATE TABLE exam_info_2 (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50),
    Scores float
);
 
-- Insert 10 values for each variable
INSERT INTO exam_info_2 (FirstNames, LastNames, Scores) VALUES
('John', 'Doe',  80.345544),
('Alice', 'Smith',  75.6355),
('Bob', 'Johnson',  78.5364565),
('Emily', 'Brown',  60.3565),
('Michael', 'Davis', 86.5353656),
('Sarah', 'Wilson', 90.535464),
('David', 'Lee', 75.567765),
('Jessica', 'Taylor', 75.34242),
('Chris', 'Evans',  55.09098),
('Emma', 'Thompson',  67.34535);

SELECT ROUND(Scores, 2) AS RoundedScores
FROM exam_info_2;
-- Create the table
CREATE TABLE exam_info_3 (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50),
    Scores float
);
 
-- Insert 10 values for each variable
INSERT INTO exam_info_3 (FirstNames, LastNames, Scores) VALUES
('John', 'Doe',  80.345544),
('Alice', 'Smith',  75.6355),
('Bob', 'Johnson',  78.5364565),
('Emily', 'Brown',  60.3565),
('Michael', 'Davis', 86.5353656),
('Sarah', 'Wilson', 90.535464),
('David', 'Lee', 75.567765),
('Jessica', 'Taylor', 75.34242),
('Chris', 'Evans',  55.09098),
('Emma', 'Thompson',  67.34535);

SELECT SQRT(Scores) AS TransformedScores
FROM exam_info_3; 
-- Create the table
CREATE TABLE purchases (
    CustomerID INT,
    PurchaseDate DATE,
    ReturnDate DATE
);
 
-- Insert values
INSERT INTO purchases (CustomerID, PurchaseDate, ReturnDate) VALUES
(1, '2024-01-01', '2024-01-05'),
(2, '2024-01-02', '2024-01-06'),
(3, '2024-01-03', '2024-01-07'),
(4, '2024-01-04', '2024-01-08'),
(5, '2024-01-05', '2024-01-09'),
(6, '2024-01-06', '2024-01-10'),
(7, '2024-01-07', '2024-01-11'),
(8, '2024-01-08', '2024-01-12'),
(9, '2024-01-09', '2024-01-13'),
(10, '2024-01-10', '2024-01-14');
SELECT date_format(PurchaseDate, "%y-%M-%D") AS FormatedDate
FROM purchases;