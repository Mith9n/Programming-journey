
-- school student database-- 

create database dummy_school;
use dummy_school;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    student_type ENUM('Full-time', 'Part-time'),
    score INT
);

INSERT INTO students (name, student_type, score) VALUES
('Alice', 'Full-time', 85),
('Bob', 'Part-time', 90),
('Charlie', 'Full-time', 78),
('David', 'Full-time', 92),
('Eve', 'Part-time', 88),
('Frank', 'Full-time', 70),
('Grace', 'Part-time', 75);

-- where cluse 
select name,score from students where score > 80 ; -- using conditon 

select student_type , avg(score) as Avg_score
from students
group by student_type;  -- coloum wise filter 

select student_type , avg(score) as Avg_score
from students
group by student_type
having  avg (score) > 82 ;  -- group filter  


-- college_student database-- 
CREATE DATABASE IF NOT EXISTS college_student;
USE college_student;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    score INT,
    grade VARCHAR(2),
    district VARCHAR(50)
);


INSERT INTO students (name, score, grade, district) VALUES
('Alice', 85, 'A', 'Dhaka'),
('Bob', 78, 'B', 'Chittagong'),
('Charlie', 92, 'A+', 'Dhaka'),
('David', 67, 'C', 'Sylhet'),
('Eve', 88, 'A', 'Khulna'),
('Frank', 55, 'D', 'Rajshahi'),
('Grace', 73, 'B', 'Barisal'),
('Hannah', 90, 'A+', 'Chittagong'),
('Ivy', 81, 'A', 'Khulna'),
('Jack', 60, 'C', 'Sylhet');

select * from students;

select name , score
from students
where score > 80 ;

SELECT COUNT(*) AS total_students_above_80
FROM students
WHERE score > 80;

select name 
from students
where score > 80 
group by name ;

select district , avg(score) as avg_score 
from students 
group by district 
having avg(score) >  80 ;

set sql_safe_updates = 0;
UPDATE students
SET score = 92
WHERE id = 4;

select* from students;


-- university database -- 

CREATE DATABASE university_students;
USE university_students;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    score FLOAT,
    grade VARCHAR(5),
    semester INT,
    district VARCHAR(50)
);

INSERT INTO students (name, department, score, grade, semester, district)
VALUES
('Alice Rahman', 'CSE', 85.5, 'A', 3, 'Dhaka'),
('Bijoy Das', 'EEE', 78.0, 'B+', 2, 'Chittagong'),
('Chaya Akter', 'CSE', 91.0, 'A+', 4, 'Khulna'),
('Dipon Roy', 'BBA', 65.0, 'C', 1, 'Barisal'),
('Esha Islam', 'CSE', 88.0, 'A', 3, 'Dhaka'),
('Farhan Hossain', 'EEE', 72.5, 'B', 2, 'Sylhet'),
('Giti Khatun', 'BBA', 94.0, 'A+', 4, 'Rajshahi'),
('Hasan Mirza', 'CSE', 59.0, 'D', 1, 'Rangpur'),
('Ishrat Jahan', 'BBA', 80.0, 'B+', 2, 'Khulna'),
('Jamal Uddin', 'EEE', 86.0, 'A', 4, 'Chittagong');



SET SQL_SAFE_UPDATES = 0;

UPDATE students
SET grade = 'B+'
WHERE grade = 'B';

SELECT * FROM students;

delete from students
where grade > "B+";

SELECT * FROM students;

