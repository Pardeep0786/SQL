#Create Database named as college
CREATE DATABASE college;

#Use the college database
USE college;

#Create a student table
CREATE TABLE Students(
Roll_No INT PRIMARY KEY,
Stu_Name VARCHAR(20),
Marks INT NOT NULL,
Course VARCHAR(20),
City VARCHAR (20)
);

#Inset data into Students table
INSERT INTO Students (Roll_No, Stu_Name, Marks, Course, City) VALUES
(1, 'Yuvraj', 70, 'BCA', 'Pathankot'),
(2, 'Ansh', 80, 'BCA', 'Pathankot'),
(3, 'Tanish', 85, 'BCA', 'Pathankot'),
(4, 'Bhumi', 80, 'BCA', 'Gurdaspur'),
(5, 'Shivali', 85, 'BCA', 'Gurdaspur'),
(6, 'Palak', 90, 'BCA', 'Pathankot');

#Select particular column's from Students table
SELECT Stu_Name, City FROM Students;
SELECT * FROM Students;

#Select the all data from Student table
SELECT * FROM Students;

#Select Student names form Student table where city is equal to Pathankot
SELECT Stu_Name FROM Students
WHERE City = 'Pathankot';

#Perform AND operation
SELECT Stu_Name FROM Students
WHERE City = 'Gurdaspur' AND Marks >= 80;

#Perform BETWEEN operation
SELECT * FROM Students
WHERE Marks BETWEEN 80 AND 85;

#Use IN function
SELECT * FROM Students
WHERE Marks IN (70, 85);

#Select the first three records form the Students table
SELECT * FROM Students
LIMIT 3;

#Sort the data in Ascending order
SELECT * FROM Students
ORDER BY Stu_Name ASC;

#Perform MIN operation on Marks
SELECT MAX(Marks) FROM Students;

#Perform MIN operation on Marks
SELECT MIN(Marks) FROM Students;

#Perform COUNT operation on student name
SELECT COUNT(Stu_Name) FROM Students;

#Perform average operation on marks
SELECT AVG(Marks) FROM Students;

#Peform SUM operation on marks
SELECT SUM(Marks) FROM Students;

#Peform COUNT operation on student name
SELECT COUNT(Stu_Name) FROM Students
WHERE City = 'Pathankot';

#Implement GROUP BY Clause on Student by city
SELECT City, COUNT(Stu_Name) FROM Students
GROUP BY City;

#Use the HAVING clause
SELECT COUNT(Stu_Name), City FROM Students
GROUP BY City
HAVING max(Marks) > 85;

#General Order
SELECT (columns)
FROM (table_name)
WHERE (conditions)
GROUP BY (column_name)
HAVING (conditions)
ORDER BY (column_name);

SET SQL_SAFE_UPDATES = 0;
#Table related query(update)
UPDATE Students
SET Marks = 90
WHERE Marks = 85;

#To see the updation
SELECT * FROM Students;

#Sub - query
SELECT *
FROM Students
WHERE Marks > (SELECT AVG(Marks) FROM Students);

#Creat a another table named as Dept
CREATE TABLE Dept(
Dept_id INT PRIMARY KEY,
Dept_name VARCHAR(20)
);

INSERT INTO Dept (Dept_id, Dept_name) VALUES 
(101, 'Computer Science'),
(102, 'English'),
(103, 'Science');

#To delete a row
DELETE FROM Dept
WHERE Dept_name = 'Science';

#Table related query (ALTER)
#ADD
ALTER TABLE Dept
ADD COLUMN Salary VARCHAR(20);

#DROP
ALTER TABLE Dept
DROP Salary;

#RENAME
ALTER TABLE Dept
RENAME Dept1;

#CHANGE (column name)
ALTER TABLE Dept1
CHANGE Dept_name Dept_Name VARCHAR(20);

SELECT * FROM Dept1;


#Joins in sql 
#create a table named as student
CREATE TABLE student (
stu_id INT PRIMARY KEY,
name VARCHAR(20)
);

#insert data into student table
INSERT INTO student (stu_id, name) VALUES
(101, 'Shivali'),
(102, 'Palak'),
(103, 'Bhumi');

#create a one more table named as course
CREATE TABLE course (
stu_id INT PRIMARY KEY,
course VARCHAR(20)
);

#insert data into course table
INSERT INTO course (stu_id, course) VALUES
(100, 'BA'),
(101, 'BCA'),
(103, 'BCA'),
(105, 'B.COM');

#inner join
SELECT * 
FROM student
INNER JOIN course
ON student.stu_id = course.stu_id;

#left join
SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.stu_id = c.stu_id;

#right join
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.stu_id = c.stu_id;

#full join
SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.stu_id = c.stu_id
UNION
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.stu_id = c.stu_id;

#union
SELECT * FROM student
UNION
SELECT * FROM course;


#VIEW
CREATE VIEW view1 AS 
SELECT stu_id FROM student;

SELECT * FROM view1;





