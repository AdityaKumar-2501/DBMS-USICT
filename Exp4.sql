-- GROUP BY
SELECT COUNT(*), salary FROM faculties
GROUP BY salary;

-- HAVING with GROUP BY
SELECT COUNT(*), salary FROM faculties
GROUP BY salary HAVING COUNT(Salary) >1;

SELECT COUNT(*), Department_ID FROM students
GROUP BY Department_ID HAVING COUNT(Department_ID) > 1;

-- ORDER BY
SELECT * FROM students
ORDER BY Rollno;

SELECT * FROM students
ORDER BY Name;

-- GROUP BY HAVING ORDER BY
SELECT COUNT(*), salary FROM faculties
GROUP BY salary
HAVING COUNT(Salary) >1
ORDER BY COUNT(Salary) ASC;