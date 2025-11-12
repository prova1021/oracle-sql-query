--databases.​
--DDL (Data Definition Language): CREATE, ALTER, DROP
--DML (Data Manipulation Language): INSERT, UPDATE, DELETE
--DQL (Data Query Language): SELECT

--Table Creation:
CREATE TABLE STUDENT (
ROLL_NO INT PRIMARY KEY,
NAME VARCHAR2(50),
AGE INT,
DEPARTMENT VARCHAR2(30),
CITY VARCHAR2(30)
);
--Insert Data:
INSERT INTO STUDENT VALUES (101, 'Rahat Shahriar', 20, 'CSE',
'Gazipur');
INSERT INTO STUDENT VALUES (102, 'Mahabub Rahman', 21, 'EEE',
'Dhaka');
INSERT INTO STUDENT VALUES (103, 'Ijaj Hakim', 22, 'CSE',
'Gazipur');
INSERT INTO STUDENT VALUES (104, 'Munjarin Khan', 20, 'CSE',
'Dhaka');
INSERT INTO STUDENT VALUES (105, 'Abu Siddik', 23, 'EEE',
'Gazipur');
--Queries Executed:
--1.​ View all data:​
SELECT * FROM STUDENT;
--2.​ Select CSE students:​
SELECT NAME, AGE FROM STUDENT WHERE DEPARTMENT = 'CSE';
--3.​ Order by age descending:​
SELECT NAME, AGE FROM STUDENT ORDER BY AGE DESC;
--4.​ Count students by department:​
SELECT DEPARTMENT, COUNT(*) AS TOTAL FROM STUDENT GROUP BY
DEPARTMENT;
--5.​ Update student city:​
UPDATE STUDENT SET CITY = 'Dhaka' WHERE ROLL_NO = 101;
--6.​ Delete a student:​
DELETE FROM STUDENT WHERE ROLL_NO = 105;

ok
