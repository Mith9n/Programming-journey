create database practice_day;
use practice_day;

create table Employee(
	Employee_name varchar(25),
    Employee_id smallint,
    Employee_age int ,
    Employee_salary decimal(10,2)
);

insert into Employee(Employee_name,Employee_id,Employee_salary) values
("Maruf Hasan",1282,5000000),
("Limon Hasan",1282,5000000);

select * from Employee
where  Employee_name = "Maruf Hasan";

-- delete table record  

set sql_safe_updates = 0;
delete from Emmployee
where  name = "Limon Hasan";

select * from employee



