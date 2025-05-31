use dummydb;
select * from departments ;
-- without join  

select employees.first_name, departments.department_name
from employees , departments
where employees.department_id = departments.department_id;

--  join 

select employees.first_name, departments.department_name
from employees join departments on employees.department_id = departments.department_id;

-- join (using)
select employees.first_name , departments.department_name
from employees join departments using (department_id) ;

-- Inner, left , right , cross join 

-- self join ( only one table )  -- employee and his/her manager

select m.first_name , e.first_name 
from employees as m
	join employees as e 
    on e.employee_id = m.manager_id;
    
    select * from employees;
    
-- Empty department employee

select departments.department_name
from departments
	left join employees 
	on departments.department_id = employees.department_id 
	where employees.department_id is null; 
 
 --  employee first_name , salary and department avg salary > salary lessthen 20k ;
 
SELECT employees.first_name, employees.salary,
  (SELECT AVG(salary) 
   FROM employees 
   WHERE department_id = employees.department_id) - employees.salary
FROM employees, departments
WHERE employees.department_id = departments.department_id;

-- min salary group 
 
SELECT department_name, MIN(salary)
FROM employees
JOIN departments 
  ON employees.department_id = departments.department_id
GROUP BY department_name
HAVING MIN(salary) > 5000;


 
