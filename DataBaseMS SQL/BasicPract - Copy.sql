-- This is a single-line comment
SELECT * FROM employees;


# This is also a single-line comment
SELECT * FROM employees;


/*
This is a multi-line comment.
we
 can write explanations here.
*/
SELECT * FROM employee;




show databases;
create database My_Pract;

# drop database my_pract;

use my_pract;
show databases;
show tables;


create table my_emp (Id int primary key, 
Emp_Name varchar(20) not null,
age int check (age>20), 
Role varchar(20) , 
salary int ,
Contact int,
join_date date);

# drop table my_emp;


insert into my_emp values (1,'Mohit',25,"Data Scientist",78000,818081,"1999-05-23");
 select * from my_emp;

insert into my_emp (ID, Emp_Name, age, Role, Salary)  values (2,"John",25,"HR",3000),(3,"Gaurav",25,"Data_Analysis",3000),
(4,"Riyaan",28,"Data Engineer",40000),
(5,"Arman",29,"Data Scientist",80000);

select * from my_emp;

/*
INSERT INTO my_emp (Id, Emp_Name, age, Role, salary, Contact, join_date)
VALUES
(6, 'kohn', 25, 'HR', 3000, 943210, '2024-11-20'),
(7, 'Aurav', 28, 'Data Analysis', 3000, 983211, '2024-11-20'),
(8, 'Riya', 30, 'Data Engineer', 40000, 983212, '2024-11-20'),
(9, 'Aru', 32, 'Data Scientist', 80000, 953213, '2024-11-20');
*/
INSERT INTO my_emp 
VALUES
(6, 'kohn', 25, 'HR', 3000, 943210, '2024-11-20'),
(7, 'Aurav', 28, 'Data Analysis', 3000, 983211, '2024-11-20'),
(8, 'Riya', 30, 'Data Engineer', 40000, 983212, '2024-11-20'),
(9, 'Aru', 32, 'Data Scientist', 80000, 953213, '2024-11-20');

select * from my_emp;



-- ---------------------------------------------------------------------------------
create database Stud;
show databases;
use stud;
create table Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 5),                 -- minimum age rule (change if needed)
    Course VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Contact BIGINT CHECK (Contact BETWEEN 1000000000 AND 9999999999),
    Fees INT,
    Admission_Date DATE
);
INSERT INTO student
VALUES
(1, 'Rohan', 18, 'BE Computer Eng', 'rohan1@example.com', 9876543210, 85000, '2024-06-01'),
(2, 'Aditya', 20, 'BE IT', 'aditya2@example.com', 9876543211, 82000, '2024-06-05'),
(3, 'Karan', 22, 'BE Mechanical', 'karan3@example.com', 9876543212, 90000, '2024-06-10'),
(4, 'Simran', 19, 'BE Civil', 'simran4@example.com', 9876543213, 78000, '2024-06-12'),
(5, 'Neha', 21, 'BE Electrical', 'neha5@example.com', 9876543214, 88000, '2024-06-15'),

(6, 'Arjun', 23, 'BE Computer Eng', 'arjun6@example.com', 9876543215, 87000, '2024-06-18'),
(7, 'Meera', 20, 'BE IT', 'meera7@example.com', 9876543216, 82000, '2024-06-20'),
(8, 'Yash', 22, 'BE Mechanical', 'yash8@example.com', 9876543217, 91000, '2024-06-22'),
(9, 'Pooja', 21, 'BE Civil', 'pooja9@example.com', 9876543218, 76000, '2024-06-25'),
(10, 'Sahil', 19, 'BE Electrical', 'sahil10@example.com', 9876543219, 85000, '2024-06-28'),

(11, 'Isha', 22, 'BE Computer Eng', 'isha11@example.com', 9876543220, 88000, '2024-07-01'),
(12, 'Ritik', 24, 'BE IT', 'ritik12@example.com', 9876543221, 83000, '2024-07-04'),
(13, 'Disha', 20, 'BE Mechanical', 'disha13@example.com', 9876543222, 90000, '2024-07-06'),
(14, 'Nikhil', 23, 'BE Civil', 'nikhil14@example.com', 9876543223, 78000, '2024-07-08'),
(15, 'Prachi', 18, 'BE Electrical', 'prachi15@example.com', 9876543224, 86000, '2024-07-10'),

(16, 'Harsh', 19, 'BE Computer Eng', 'harsh16@example.com', 9876543225, 87000, '2024-07-12'),
(17, 'Tanya', 21, 'BE IT', 'tanya17@example.com', 9876543226, 82000, '2024-07-14'),
(18, 'Vivek', 22, 'BE Mechanical', 'vivek18@example.com', 9876543227, 93000, '2024-07-16'),
(19, 'Ananya', 20, 'BE Civil', 'ananya19@example.com', 9876543228, 76000, '2024-07-18'),
(20, 'Suresh', 23, 'BE Electrical', 'suresh20@example.com', 9876543229, 89000, '2024-07-20'),

(21, 'Ritika', 21, 'BE Computer Eng', 'ritika21@example.com', 9876543230, 88000, '2024-07-22'),
(22, 'Lokesh', 24, 'BE IT', 'lokesh22@example.com', 9876543231, 83000, '2024-07-24'),
(23, 'Mahima', 19, 'BE Mechanical', 'mahima23@example.com', 9876543232, 91000, '2024-07-26'),
(24, 'Deepak', 25, 'BE Civil', 'deepak24@example.com', 9876543233, 78000, '2024-07-28'),
(25, 'Shreya', 22, 'BE Electrical', 'shreya25@example.com', 9876543234, 87000, '2024-07-30');


show tables;

select * from student;

# semester_id (PK) ;
# semester_name;



CREATE TABLE semester (
    semester_id INT PRIMARY KEY,
    semester_name VARCHAR(20)
);

INSERT INTO semester VALUES
(1, 'Semester 1'),
(2, 'Semester 2'),
(3, 'Semester 3'),
(4, 'Semester 4'),
(5, 'Semester 5'),
(6, 'Semester 6'),
(7, 'Semester 7'),
(8, 'Semester 8');



-- ----------------------------------------------
CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    semester_id INT,
    subject_name VARCHAR(50),
    subject_type VARCHAR(20),      -- Theory, Practical, Full
    max_marks INT,
    FOREIGN KEY (semester_id) REFERENCES semester(semester_id)
);

INSERT INTO subjects VALUES
(101, 1, 'Mathematics 1', 'Theory', 80),
(102, 1, 'Physics 1', 'Theory', 80),
(103, 1, 'Basic Electrical', 'Theory', 80),
(104, 1, 'Engineering Graphics', 'Theory', 80),
(105, 1, 'Workshop Practice', 'Practical', 20),
(106, 1, 'Physics Lab', 'Practical', 20);


--  ------------------------------------------------------------------------

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    score_obtained INT,
    FOREIGN KEY (student_id) REFERENCES student(Student_ID),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);


INSERT INTO marks VALUES
(1, 1, 101, 72),
(2, 1, 102, 65),
(3, 1, 105, 18),
(4, 2, 101, 81),
(5, 2, 102, 77),
(6, 2, 103, 69),
(7, 2, 104, 55),
(8, 3, 101, 62),
(9, 3, 102, 58),
(10, 3, 103, 74),
(11, 3, 104, 47),
(12, 3, 105, 90),
(13, 4, 101, 88),
(14, 4, 102, 79),
(15, 4, 103, 67),
(16, 4, 104, 72),
(17, 4, 105, 53),
(18, 5, 101, 91),
(19, 5, 102, 83),
(20, 5, 103, 76),
(21, 5, 104, 64),
(22, 5, 105, 59),
(23, 1, 103, 71),
(24, 1, 104, 68),
(25, 1, 105, 49);


# drop table marks;


show tables;

select * from marks;
select * from semester;