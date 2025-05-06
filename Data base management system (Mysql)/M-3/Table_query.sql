create database gub_student;
use gub_student;

create table students(
	Roll int primary key,
    Name varchar(25) not null,
    Email varchar(30) unique,
    Address varchar(150),
    Age tinyint check(Age>10)
);

/*create table students(
	Roll int ,
    Name varchar(25) not null ,
    Email varchar(30) ,
    Address varchar(150),
    Age tinyint ,
    
    primary key(Roll),
    unique (Email),
    check (Age > 10)
);*/

/*create table students(
	Roll int ,
    Name varchar(25) not null ,
    Email varchar(30) ,
    Address varchar(150),
    Age tinyint ,
    
    constraint pk_rule primary key(Roll),
    constraint unique_rule unique (Email),
    constraint check_rule check (Age > 10)
);*/

insert into students (Roll,Name,Email,Address,age) values(121418,"Maruf Hasan","marufhasan01@gamil.com","Gazipur,Dhaka,Bangladesh",19);
insert into students (Roll,Name,Email,Address,age) values(1214189,"Rakib Hasan","Rakibhasan01@gamil.com","Uttara,Dhaka,Bangladesh",23);


create table Libary(
	Bookname varchar(50),
    who_hired_Roll int,
    foreign key (who_hired_Roll) references students (Roll)
);

create table course(
	Course_name varchar(50),
    University_name varchar(50),
    Credit int,
    primary key (Course_name,University_name)
);

insert into course(Course_name,University_name,Credit) values("Cse - 101","German University Bangladesh",3);
insert into course(Course_name,University_name,Credit) values("Cse - 101","Green university Bangladesh",4);
insert into course(Course_name,University_name,Credit) values("Cse - 101","Uttara University",3);
insert into course(Course_name,University_name,Credit) values("Cse - 101","Bangladesh university of business and Technology",4);

-- see all field or record 
SELECT * FROM gub_student.Course;
SELECT * FROM gub_student.students;

-- see all studnets name 
select name from students;

-- see rakib's record 
select * from students
where name ="Rakib Hasan";

create table Assignment_marks(
	Name varchar(30),
    Id int ,
    Marks tinyint
);

insert into Assignment_marks(Name,Id,Marks) values("Arif Mahmud", 1610 , 70);
insert into Assignment_marks(Name,Id,Marks) values("Akib khan", 1613 , 60);
insert into Assignment_marks(Name,Id,Marks) values("Ripon Hossin", 1611 , 80);
insert into Assignment_marks(Name,Id,Marks) values("Asif rahman", 1617 , 90);

select * from Assignment_marks;


-- Arithmatic operation 
create table Exam_marks(
	Name varchar(30),
    Id int ,
    Cse tinyint,
    Eec tinyint
);
insert into Exam_marks(Name,Id,Cse,Eec) values("Arif Mahmud", 1610 , 70,90);
insert into Exam_marks(Name,Id,Cse,Eec) values("Akib khan", 1613 , 60,80);
insert into Exam_marks(Name,Id,Cse,Eec) values("Ripon Hossin", 1611 , 80,70);
insert into Exam_marks(Name,Id,Cse,Eec) values("Asif rahman", 1617 , 90,60);

select(Cse + Eec) as total_marks
from Exam_marks
where Name = "Asif rahman";

-- comparison operator ;

create table employee(
	Id int primary key,
	Name varchar(50),
    Age int ,
    Position varchar(50)
    
);

insert into employee (Id,Name,Age,Position) values 
(101,"Maruf",21,"PHP developer"),
(103,"Ayeon",22,"java developer"),
(104,"Reon",23,"c++ developer"),
(105,"Limon",21,"react developer"),
(106,"Noyon",19,"javascript developer");

-- use here == 
select * from employee
where Age = 21 ; 

-- use  > greater and less < 

select * from  employee 
where Age > 22 ;

select * from  employee 
where Age < 20 ;

select Name,Age from employee
where Age > 20 and id > 102 ;

select name from employee 
order by age desc;

select name from employee 
order by age asc;



    
 












