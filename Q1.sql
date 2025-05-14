CREATE DATABASE College;
USE College;

	CREATE TABLE instructor (
		id INT PRIMARY KEY,
		name VARCHAR(50),
		dept_name VARCHAR(50),
		salary DECIMAL(10, 2)
	);

	CREATE TABLE teaches (
		id INT,
		course_id VARCHAR(10),
		sec_id VARCHAR(10),
		semester VARCHAR(10),
		year INT,
		FOREIGN KEY (id)
			REFERENCES instructor (id)
	);


INSERT INTO instructor (id, name, dept_name, salary)
VALUES (10211, 'Smith', 'Biology', 66000);


DELETE FROM instructor
WHERE id = 10211;

INSERT INTO instructor (id, name, dept_name, salary) VALUES
(10001, 'Alice Johnson', 'Computer Science', 85000),
(10002, 'Bob Williams', 'Mathematics', 72000),
(10003, 'Catherine Smith', 'Physics', 78000),
(10004, 'David Brown', 'Chemistry', 69000),
(10005, 'Ella Davis', 'History', 64000),
(10006, 'Frank Miller', 'Biology', 71000),
(10007, 'Grace Lee', 'English', 67000),
(10008, 'Henry Wilson', 'Mechanical Engineering', 91000),
(10009, 'Irene Taylor', 'Electrical Engineering', 94000),
(10010, 'Jack Anderson', 'Economics', 73000);


SELECT *
FROM instructor
WHERE dept_name = 'History';



INSERT INTO teaches (id, course_id, sec_id, semester, year) VALUES
(10001, 'CS101', '1', 'Fall', 2024),
(10002, 'MATH201', '1', 'Spring', 2025),
(10003, 'PHY301', '2', 'Fall', 2024),
(10004, 'CHEM101', '1', 'Summer', 2025),
(10005, 'HIST210', '2', 'Spring', 2025),
(10006, 'BIO110', '1', 'Fall', 2024),
(10007, 'ENG150', '2', 'Fall', 2024),
(10008, 'ME202', '1', 'Winter', 2025),
(10009, 'EE101', '2', 'Fall', 2024),
(10010, 'ECO105', '1', 'Summer', 2025);

SELECT *
FROM instructor, teaches;


SELECT instructor.name, teaches.course_id
FROM instructor
INNER JOIN teaches ON instructor.id = teaches.id;


SELECT *
FROM instructor
ORDER BY salary;

SELECT *
FROM instructor
ORDER BY salary DESC;

SELECT course_id
FROM teaches
WHERE (semester = 'Fall' AND year = 2024)
   OR (semester = 'Spring' AND year = 2025);
   
   
   
   
   SELECT course_id 
FROM teaches 
WHERE (semester = 'Fall' AND year = 2024) 
   AND (semester = 'Spring' AND year = 2024);
   
   
   SELECT course_id 
FROM teaches 
WHERE semester = 'Fall' AND year = 2024
AND course_id NOT IN (
    SELECT course_id 
    FROM teaches 
    WHERE semester = 'Spring' AND year = 2025
);



INSERT INTO instructor (id, name, dept_name, salary) VALUES
(10292, 'Smith', 'Biology', 66000),
(10293, 'Tom', 'Biology', NULL);



SELECT * 
FROM instructor 
WHERE salary IS NULL;


SELECT AVG(salary) AS avg_salary
FROM instructor
WHERE dept_name = 'Computer Science';



select * from instructor;
select * from teaches;
