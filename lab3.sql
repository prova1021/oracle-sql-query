-- Create COURSE table
CREATE TABLE COURSE (CourseID INT PRIMARY KEY,
CourseName VARCHAR2(50) UNIQUE NOT NULL
);
-- Create STUDENT table with multiple constraints
CREATE TABLE STUDENT (
StudentID INT PRIMARY KEY,
Name VARCHAR2(50) NOT NULL,
Age INT CHECK (Age >= 18),
Email VARCHAR2(100) UNIQUE,
CourseID INT,
AdmissionDate DATE DEFAULT SYSDATE,
Fees DECIMAL(10,2) CHECK (Fees > 0),
FOREIGN KEY (CourseID) REFERENCES COURSE(CourseID)
);

-- Insert sample courses
INSERT INTO COURSE VALUES (201, 'Computer Science');
INSERT INTO COURSE VALUES (202, 'Electrical Engineering');
INSERT INTO COURSE VALUES (203, 'Business Studies');
-- Insert sample students
INSERT INTO STUDENT (StudentID, Name, Age, Email, CourseID, Fees)
VALUES (1, 'Nusrat Jahan', 22, 'nusrat@gmail.com', 201, 45000);
INSERT INTO STUDENT (StudentID, Name, Age, Email, CourseID, Fees)
VALUES (2, 'Arif Hossain', 24, 'arif@gmail.com', 202, 50000);
INSERT INTO STUDENT (StudentID, Name, Age, Email, CourseID, Fees)
VALUES (3, 'Tania Rahman', 19, 'tania@gmail.com', 203, 40000);
-- Inserting without Fees will use DEFAULT AdmissionDate
INSERT INTO STUDENT (StudentID, Name, Age, Email, CourseID)
VALUES (4, 'Shamim Ahmed', 21, 'shamim@gmail.com', 201);


--Sample Queries
--1.​ Display all students:
SELECT * FROM STUDENT;
--2.​ List students above 22 years old:
SELECT Name, Age FROM STUDENT WHERE Age > 22;
--3.​ Find students with default AdmissionDate applied:
SELECT Name, AdmissionDate FROM STUDENT WHERE StudentID = 4;
--4.​ Join with Course table to show course names:
SELECT S.Name, S.Fees, C.CourseName
FROM STUDENT S
JOIN COURSE C ON S.CourseID = C.CourseID;
--5.​ Invalid insertion test (should fail because Age < 18):
INSERT INTO STUDENT (StudentID, Name, Age, Email, CourseID, Fees)
VALUES (5, 'Test User', 16, 'test@gmail.com', 201, 30000);
