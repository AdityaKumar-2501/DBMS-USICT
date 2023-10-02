use university;

CREATE TABLE Students (
	Rollno VARCHAR(15) PRIMARY KEY,
    Name VARCHAR(30),
    DateofBirth DATE,
    Gender VARCHAR(1),
    Address VARCHAR(70),
    PhoneNo VARCHAR(15),
    Department_ID VARCHAR(15),
    FOREIGN KEY Students(Department_ID) REFERENCES Departments(Department_ID)
);

CREATE TABLE Courses (
	Course_ID VARCHAR(15) PRIMARY KEY,
    Courses_Name VARCHAR(70)
);

CREATE TABLE Departments (
	Department_ID VARCHAR(15) PRIMARY KEY,
    Course_ID VARCHAR(15),
    HOD VARCHAR(30),
    HOD_ID VARCHAR(15)
);

ALTER TABLE Departments ADD PRIMARY KEY (Department_ID);

-- this is for making forign key after the creation of table
ALTER TABLE Departments ADD FOREIGN KEY (HOD_ID) references Faculties(Faculty_ID);

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
    FOREIGN KEY Faculties(Department_ID) REFERENCES Departments(Department_ID)
);


DESC courses;
DESC students;
DESC Faculties;
DESC Departments;