DROP DATABASE IF EXISTS join_practice_db;
CREATE DATABASE join_practice_db;
USE join_practice_db;


DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS departments;


CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_code VARCHAR(10),
    full_name VARCHAR(100)
);


CREATE TABLE departments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    dept_code VARCHAR(10),
    student_id INT,
    course VARCHAR(100),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);


INSERT INTO students (student_id, student_code, full_name) VALUES
(1, 'STU001', 'Rahim Uddin'),
(2, 'STU002', 'Karim Hossain'),
(3, 'STU003', 'Shamima Akter'),
(4, 'STU004', 'Taslima Nasrin'),
(5, 'STU005', 'Jamal Mia'),
(6, 'STU006', 'Nasir Uddin'),
(7, 'STU007', 'Rokeya Sultana'),
(8, 'STU008', 'Anik Rahman'),
(9, 'STU009', 'Lamia Hossain'),
(10, 'STU010', 'Babar Ali');


INSERT INTO departments (dept_code, student_id, course) VALUES
('DPT001', 1, 'Computer Science'),
('DPT002', 2, 'Electrical Engineering'),
('DPT003', 3, 'Business Administration'),
('DPT004', 4, 'English'),
('DPT005', 5, 'Law'),
('DPT006', 6, 'Accounting');

SELECT * FROM students
INNER JOIN departments
ON students.student_id = departments.student_id;

SELECT * FROM students
LEFT JOIN departments
ON students.student_id = departments.student_id;

SELECT * FROM students AS s 
RIGHT JOIN departments AS d
ON students.student_id = departments.student_id ; 

-- full join 

select * from students as s
left join departments  as d
on s.student_id = d.student_id 
union 
select * from students as s
right join  departments as d
on s.student_id = d.student_id ;

     