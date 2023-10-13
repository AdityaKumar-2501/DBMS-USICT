CREATE DATABASE university;
show databases;
use university;

CREATE TABLE Courses (
	Course_ID VARCHAR(15) PRIMARY KEY,
    Courses_Name VARCHAR(200)
);

CREATE TABLE Departments (
	Department_ID VARCHAR(15) PRIMARY KEY,
    Course_ID VARCHAR(15),
    Department_name VARCHAR(60),
    HOD VARCHAR(30),
    HOD_ID VARCHAR(15)
);

-- this is for making forign key after the creation of table
ALTER TABLE Departments ADD FOREIGN KEY (HOD_ID) references Faculties(Faculty_ID);
ALTER TABLE Departments ADD FOREIGN KEY (Course_ID) references Courses(Course_ID);


CREATE TABLE Faculties(
	Faculty_ID VARCHAR(15) PRIMARY KEY,
    Name VARCHAR(30),
    Title VARCHAR(20),
    DateofBirth DATE,
    Gender VARCHAR(1),
    Address VARCHAR(70),
    Email VARCHAR(30),
    PhoneNo VARCHAR(15),
    Department_ID VARCHAR(15),
    Subject_Teaches VARCHAR(200),
    Salary integer,
    FOREIGN KEY Faculties(Department_ID) REFERENCES Departments(Department_ID)
);


CREATE TABLE Students (
	Rollno integer PRIMARY KEY,
    Name VARCHAR(30),
    DateofBirth DATE,
    Gender VARCHAR(1),
    Address VARCHAR(70),
    PhoneNo VARCHAR(15),
    Department_ID VARCHAR(15),
    FOREIGN KEY Students(Department_ID) REFERENCES Departments(Department_ID)
);

-- ALTER table Students MODIFY column Rollno integer;

DESC courses;
DESC students;
DESC Faculties;
DESC Departments;