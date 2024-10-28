CREATE TABLE students (student_id INT, first_name CHAR (50), last_name CHAR (50), dob DATE, email VARCHAR (100),
phone_number INT);

CREATE TABLE courses (course_id INT, course_name CHAR (50), course_code TEXT, credits TEXT);

CREATE TABLE enrollments (enrollment_id INT, student_id INT, course_id TEXT, enrollment_date DATE);

CREATE TABLE grades (grade_id INT, enrollment_id INT, grade text);

-- Alterations and Modifications
-- Adding a column `address` to the `students` table
ALTER TABLE students
ADD address VARCHAR(255);

-- Modifying the `course_name` column in the `courses` table to be of type `VARCHAR(100)
ALTER TABLE courses
MODIFY COLUMN course_name VARCHAR(100);

-- Changing the position of the `credits` column to be right after the `course_code` in the `courses` table

ALTER TABLE courses
MODIFY credits INT AFTER course_code;


-- Renaming the `dob` column in `students` to `date_of_birth`
ALTER TABLE students
CHANGE dob date_of_birth DATE;

 -- Data Insertion
-- Inserting at least 30 students into the `students` table
INSERT INTO students (student_id, first_name, last_name, date_of_birth, email, phone_number) VALUES
(1001, 'john', 'bosco', 2001-02-01, 'john_bosco@yahoo.com', 070562312),
(1002, 'mercy', 'david', 2002-03-01, 'mercy_david@gmail.com', 080657832),
(1003, 'prinecss', 'pete', 2003-03-02, 'princess_pete@yahoo.com', 090765432),
(1004, 'john', 'paul', 2004-04-03, 'john_paul@gmail.com', 071234567),
(1005, 'bartholomew', 'ruth', 2005-05-04, 'barth_ruth@gmail.com', 081987654),
(1006, 'priscilla', 'price', 2006-06-06, 'priscilla_price@yahoo.uk', 091086532),
(1007, 'blessing', 'onete', 2007-07-07,'blessing_onete@gmail.com', 070987654),
(1008, 'stones', 'cook', 2008-08-08, 'stones_cook@yahoo.com', 080234567),
(1009, 'rice', 'butt', 2009-09-09, 'rice_butt@gmail.com', 090345672),
(1010, 'briskly', 'ahmed', 2010-10-08, 'briskly_ahmed@yahoo.uk', 091023456),
(1011, 'kennedy', 'payne', 2001-02-07, 'kennedy_payne@yahoo.com', 070562312),
(1012, 'basil', 'greg', 2002-03-01, 'basil-greg@gmail.com', 080657832),
(1013, 'princewill', 'thomas', 2003-03-02, 'princewill_thomas@yahoo.com', 090765432),
(1014, 'michael', 'jordan', 2004-04-03, 'michael_jordan@gmail.com', 071234567),
(1015, 'jackson', 'paul', 2005-05-04, 'jackson_paul@gmail.com', 081987654),
(1016, 'cecil', 'john', 2006-06-06, 'cecil-john@yahoo.uk', 091086532),
(1017, 'precious', 'manuel', 2007-07-07,'precious_manuel@gmail.com', 070987654),
(1018, 'bridgestone', 'moses', 2008-08-08, 'bridge_moss@yahoo.com', 080234567),
(1019, 'thaddeus', 'badmus', 2009-09-09, 'thaddeus_badmus@gmail.com', 090345672),
(1020, 'brooks', 'damsel', 2010-10-02, 'brooks-damsel@yahoo.uk', 091023456),
(1021, 'jude ', 'smith', 2001-02-09, 'jude_smith@yahoo.com', 070562312),
(1022, 'marcus', 'garvey', 2002-03-01, 'marcus_garvey@gmail.com', '80657832'),
(1023, 'pratt', 'bond', 2003-03-02, 'pratt_bond@yahoo.com', 090765432),
(1024, 'joyce', 'dols', 2004-04-03, 'joyce_dols@gmail.com', 071234567),
(1025, 'bruce', 'lee', 2005-05-04, 'bruce_lee@gmail.com', 081987654),
(1026, 'temple', 'hall', 2006-06-06, 'temple_hall@yahoo.uk', 091086532),
(1027, 'grace', 'harvard', 2007-07-07,'grace_harvard@gmail.com', 070987654),
(1028, 'duke', 'oche', 2008-08-08, 'duke_oche@yahoo.com', 080234567),
(1029, 'godwin', 'dotu', 2009-09-09, 'godwin_dotu@gmail.com', 090345672),
(1030, 'price', 'campbell', 2010-10-08, 'price_campbell@yahoo.uk', 091023456);

-- Inserting at least 10 courses into the `courses` table
INSERT INTO courses (course_id, course_name, course_code, credits) VALUES
(1001, 'biology', 'bio 101', 'B'), 
(1002, 'chemistry', 'chem 201', 'C'),
(1003, 'physics', 'phy 301', 'A'),
(1004, 'mathemetics', 'math 211', 'A'),
(1005, 'zoology', 'zoo 110', 'B'),
(1005, 'philosophy', 'phi 101', 'C'),
(1006, 'economics', 'eco 102', 'A'),
(1007, 'psychology', 'psy 111' 'B'),
(1008, 'computer_science', 'cop 101', 'C'),
(1009, 'literary_studies', 'lit 111', 'A'),
(1010, 'botany', 'bot 101', 'A');
-- Inserting at least 12 records into the `enrollments` table, ensuring that some students are enrolled in multiple courses
INSERT INTO enrolments (enrolment_id, student_id, course_id, enrolment_date) VALUES
(1001, jhn 01, 'bio 101', 01-01-71)- student 1 enrolled in Biology, 
(1002, pce 02, 'chem 201', 02-02-72)- student 2 enrolled in Chemistry,
(1003, bth 03, 'phy 301', 03-03-73)- student 3 enrolled in Physics,
(1004, pcs 04, 'math 211', 04-04-74)-student 4 enrolled in Mathematics,
(1005, flx 05, 'zoo 110', 05-05-75)-student 5 enrolled in Zoology,
(1006, rbt 06, 'phi 101', 06-06-76)-student 6 enrolled in Philosophy,
(1007, bah 07, 'cop 101', 07-07-77)-student 7 enrolled in Computer_Science,
(1008, prp 08, 'psy 111', 08-08-88)-student 8 enrolled in Psychology,
(1009, ted 09 'bot 101', 09-09-99)-student 9 enrolled in Botany,
(1010, lin 10, 'lit 111', 10-10-00)-student 10 enrolled in Literary_Stidies,
(1011, ted 11 'bot 101', 09-09-99)-student 11 enrolled in Botany,
(1012, lin 12, 'lit 111', 10-10-00)-student 12 enrolled in Literary_Studies;

-- Inserting grades for each enrollment in the `grades` table
INSERT INTO grades (grade_id, enrollment_id, grade) VALUES
(1, '1001', 'A'), 
(2, '1002', 'B'),
(3, '1003', 'A'),
(4, '1004', 'A'),
(5, '1005', 'B'),
(6, '1006', 'A'),
(7, '1007', 'C'),
(8, '1008', 'C'),
(9, '1009' 'B')
(10, '1010', 'A');

-- Complex Queries
-- Writing a query to retrieve the full names and courses for all students
SELECT 
CONCAT(first_name, last_name) AS full_name,
    c.course_name
FROM students 
JOIN courses c ON course_id = c.course_id;  

-- Write a query to find all students who have not yet been assigned a grade
SELECT *
FROM students 
LEFT JOIN grades ON student_id = student_id
WHERE grade IS NULL;

-- Write a query that returns the average grade for each course
SELECT course_name,
AVG(grade) AS average_grade
FROM courses 
JOIN grades ON course_id = course_id
GROUP BY course_name;

-- Create a `CASE` statement to assign letter grades (A, B, C, D, F) based on numerical grades
SELECT students, enrollments,
CASE
WHEN numeric_grade >= 90 THEN 'A'
WHEN numeric_grade >= 80 THEN 'B'
WHEN numeric_grade >= 70 THEN 'C'
WHEN numeric_grade >= 60 THEN 'D'
ELSE 'F'
END AS letter_grade
FROM grades;

-- Use subqueries to find students with the highest grades in each course

SELECT student_id, first_name, last_name, course_id,grade
FROM students 
JOIN grades ON student_id = student_id
WHERE grade = (
SELECT MAX(grade)
FROM grades
WHERE course_id = course_id);

-- Using CTEs (Common Table Expressions)
-- Write a CTE to list all students with their course names and grades
WITH StudentCourses AS (
SELECT student_id, first_name, last_name, course_name, grade
FROM students 
JOIN grades ON student_id = student_id
JOIN courses ON course_id = course_id
)
SELECT student_id, first_name, last_name, course_name, grade
FROM StudentCourses;

-- Write a CTE to find students who have taken more than 2 courses
WITH CourseCounts AS (
SELECT student_id, first_name, last_name,
COUNT(course_id) AS course_count
FROM students 
JOIN grades ON student_id = student_id
GROUP BY student_id, first_name, last_name)
SELECT student_id, first_name, last_name, course_count
FROM CourseCounts
WHERE course_count > 2;

-- Importing & Exporting Data
-- Export the `students` table to a CSV file

-- Import a CSV file (provided or created) containing a list of new courses into the `courses` table

-- Additional Tasks
-- Write a query to count the number of students enrolled in each course
SELECT course_name,
COUNT(student_id) AS student_count
FROM courses 
LEFT JOIN grades ON course_id = course_id
LEFT JOIN students  ON student_id = student_id
GROUP BY course_name;

-- Create a report showing the total number of students, courses, and enrollments
Create table Report (student_id INT, total_number_of_students INT, total_number_of_courses VARCHAR (50), enrollments INT, date_of_enrolment DATE
);
INSERT INTO Report( total_number_of_students, total_number_of_courses, total_number_of_enrolments) VALUES
(1, 30, 10, 'Nine', 30);
Date: [2024-10-22]

1. Total Number of Students:

Total Students: [30]
2. Total Number of Courses:

Total Courses: [Nine]
3. Total Number of Enrollments:

Total Enrollments: [30]
-- Use a JOIN to retrieve the names of students and the courses they are not enrolled in
SELECT student_name, course_name,
FROM students 
CROSS JOIN courses 
LEFT JOIN enrollments ON s.student_id = student_id AND c.course_id = course_id
WHERE student_id IS NULL;

-- Write a query to find students who share the same last name
SELECT first_name, last_name
FROM students 
JOIN (
SELECT last_name
FROM students
GROUP BY last_name
HAVING COUNT(*) > 1
) AS duplicate_last_names ON last_name = duplicate_last_names.last_name;

 -- Create a new table named dropped_courses with the same structure as enrollments, then move
-- all enrollments where the grade is "F" to this table.
CREATE TABLE dropped_courses AS
SELECT *
FROM enrollments
WHERE 1=0;  

INSERT INTO dropped_courses
SELECT *
FROM enrollments
WHERE grade = 'F';

DELETE FROM enrollments
WHERE grade = 'F';

-- Delete all records from the grades table where the grade is below 50 and record the number of
-- rows deleted.
SELECT COUNT(*) AS rows_to_delete
FROM grades
WHERE grade < 50;

DELETE FROM grades
WHERE grade < 50;

SELECT ROW_COUNT();  


