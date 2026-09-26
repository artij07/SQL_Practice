/*Creating database*/
CREATE DATABASE College;

/*Default Database*/
USE College;

/*Creating table*/
CREATE TABLE Student(
Student_ID INT PRIMARY KEY,
Student_Name VARCHAR(100),
Age INT,
Department VARCHAR(100),
Grade VARCHAR(10)
);

/*Inserting data into table*/
INSERT INTO Student (Student_ID, Student_Name, Age, Department,Grade)
VALUES (219,'Amey',18,'Civil','B'),
(207,'Amit',19,'Mechanical','A'),
(119,'Ameya',18,'CSE','A'),
(100,'Amu',20,'Electrical','B'),
(115,'Riya',17,'BCA','A'),
(150,'Rohan',18,'BBA','C'),
(110,'Riyansh',19,'BCOM','B'),
(189,'Amruta',18,'BA','C'),
(143,'Apeksha',17,'BA','F');

SELECT * From Student;

/*Update command*/
UPDATE Student
SET Student_ID = 216
WHERE Student_ID = 219;

/*Delete command*/
DELETE FROM Student 
WHERE Grade = 'F';

/*Using operators*/
SELECT * FROM Student
WHERE Age <= 18;

/* Using OR */
SELECT * FROM Student
WHERE Department = "BCA"
OR Department = "BBA";

/*NOT Using*/
SELECT Student_Name FROM Student
WHERE NOT Grade = "A";

/*Command is used to print the names of student ending with a or any letter*/
SELECT * FROM Student
WHERE Student_Name LIKE "%a";

/*Speicific letters*/
SELECT * FROM Student
WHERE Department LIKE "%cal%";

/*Order By Ascending*/
SELECT * FROM Student 
ORDER BY Age ASC;

/*Order By Descending*/
SELECT * FROM Student
ORDER BY student_ID DESC;

/*Distinct Using*/
SELECT DISTINCT Age
FROM Student;
