CREATE DATABASE pi_classroom;
USE pi_classroom;


CREATE TABLE pi_classroom (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    phone_no VARCHAR(11)
);


INSERT INTO pi_classroom (id, name, phone_no) VALUES
(1011, 'Rahim Uddin', '01712345678'),
(1012, 'Karim Hossain', '01823456789'),
(1013, 'Amina Khatun', '01934567890'),
(1014, 'Jahid Hasan', '01556789012'),
(1015, 'Selina Akter', '01645678901'),
(1009, 'Tania Sultana', '01367890123'),
(1007, 'Rafiul Islam', '01478901234'),
(1017, 'Nusrat Jahan', '01700000000'); 


CREATE TABLE course_enroll (
    course_name VARCHAR(50),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES pi_classroom(id)
);


INSERT INTO course_enroll (course_name, student_id) VALUES
('Web Development', 1011),
('Data Science', 1007),
('Graphic Design', 1009),
('Cyber Security', 1012),
('Python Programming', 1015),
('Machine Learning', 1017),
('Database Systems', 1013);

-- Course Enrollment (With JOIN)

SELECT
    pi_classroom.id,
    pi_classroom.name,
    pi_classroom.phone_no,
    course_enroll.course_name
FROM
    pi_classroom
JOIN
    course_enroll
ON
    pi_classroom.id = course_enroll.student_id;

SELECT * FROM pi_classroom;
