INSERT INTO Courses 
VALUES
('CS07', 'OOPS, DBMS, DSA, SE, FOC, COA'),
('EC98', 'OOPS, DBMS, Applied Physics, SE, FOC, COA, Mathematics'),
('EE73', 'Mathematics, Applied Physics, Communication Skills, Engineering Linear'),
('MB14', 'Business Economics, Corporate Finance, Human Resources Management, Leadership and Entrepreneurship'),
('MT34', 'Mathematics, Advanced Programming principle, Networking, Embedded System');

SET FOREIGN_KEY_CHECKS=0;

SELECT * from Courses;

INSERT INTO Departments
VALUES
('CSD11','CS07','Prof. Hari Kumar','HK743'),
('MTD73','MT34','Prof. Neelam Mehra','NP143'),
('BTECD14','EC98','Prof. Ajay Vijay','AK711'),
('MBD09','MB14','Prof. Akash Dhiman','AL132'),
('BTEED73','EE73','Prof. Kavya Mehta','KP110');

-- INSERT INTO Departments (Department_name)
-- VALUES
-- ("B.Tech Computer Science Department"),
-- ("B.Tech Electronics Department"),
-- ("MCA Department"),
-- ("MBA Department"),
-- ("M.Tech Department");

UPDATE Departments     
SET Department_name="M.Tech Department"
WHERE Department_ID = "MTD73";

SELECT * from Departments;

INSERT INTO Faculties
VALUES
('HK743', 'Prof. Hari Kumar','Professor','1983-10-29','M', 'Sector-2 L-148 Dwarka, New Delhi','harikumar@gmail.com', '9873171691','MTD73','Mathematics, Advanced Programming Principles, Embedded System'),
('AL132', 'Prof. Akash Dhiman','Professor','1980-12-23','M', 'Sector-16 M-176 Dwarka, New Delhi','akashdhiman@gmail.com', '9736007321','MBD09','Corporate Finance, Bussiness Economics'),
('NP143', 'Prof. Neelam Mehra','Assistant Professor','1986-07-11','F', 'Saket Villa No. 734, New Delhi','neelammehra@gmail.com', '9973175198','CSD11','DBMS, FOC'),
('KP110', 'Prof. Kavya Mehta','Professor','1979-05-15','F', 'Sector-60 M-173 Noida, U.P','kavyamehta@gmail.com', '78171219813','BTECD14','DSA, OOPS, COA'),
('AK711', 'Prof. Ajay Vijay','Assistant Professor','1985-01-07','M', 'Sector-15 House No. 171, Noida, U.P','ajayvjay@gmail.com', '7732146921','BTEED73','Applied Physics, Engineering Linear'),
('RK171', 'Dr. Rahul Kashyap','Assistant Professor','1990-07-03','M', 'Sector-106 K-173, Noida, U.P','rahulkashyap@gmail.com', '7632116013','MBD09','Leadership and Entrepreneurship, Human Resources Managemnet'),
('TH177', 'Dr. Tanya Jain','Assistant Professor','1991-11-04','F', 'Sector-110 L-132, Greater Noida, U.P','tanyajain@gmail.com', '9973117311','CSD11','SE,FOC,Netwroking');

SELECT * from Faculties;

INSERT INTO Students
VALUES
('207301','Aarush Yadav','2002-11-27','M', 'Sector-15, L-151, Noida, U.P','9891282101','CSD11'),
('207304','Ridhima Mehta','2001-02-09','F', 'Sector-16, House No. 683, Dwarka, New Delhi','9971315712','CSD11'),
('209393','Sukriti Roy','1996-07-17','F', 'Sector-73, House No. 178, Dwarka, New Delhi','8802360571','MTD73'),
('203702','Akash Verma','2002-10-16','M', 'Sector-2, M-13, Dwarka, New Delhi','7671711210','BTECD14'),
('203021','Vanshika Verma','2002-12-17','F', 'Sector-25, M-167, Noida, U.P','9971171101','BTEED73'),
('201067','Preeti Sahani','1998-05-28','F', 'House No. 73, M-Block, Saket, New Delhi','7836167801','MBD09'),
('203701','Akishnav Deshmukh','2000-01-30','M', 'Sector-106, M-107, Greater Noida, U.P','7739617193','BTECD14');

SELECT * from Students;

