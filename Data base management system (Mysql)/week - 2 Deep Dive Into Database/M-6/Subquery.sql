use dummydb;
select * 
from employees
where salary > 5000;

select * 
from employees
where first_name = "Lex" and employee_id = 102;  

-- practic  subquary -- 

select *
from employees
where salary > ( SELECT SALARY
		FROM EMPLOYEES
        WHERE EMPLOYEE_ID = 114
);
 -- maxsalary ... 
SELECT * 
FROM EMPLOYEES
WHERE SALARY = (select max(SALARY) FROM employees);

-- marketing dep. worker 
 
select * 
from employees 
where department_id = ( select department_id 
						from departments 
                        where depertment_name = "Marketing" );
                        
                        
SELECT * 
FROM employees 
WHERE department_id = (
			SELECT department_id 
			FROM departments 
			WHERE department_name = 'IT'
		);

 -- HOW MANY MEMBERS IN IT DEPERTMENT  
SELECT COUNT(*) AS MEMBER
FROM employees 
WHERE department_id = (
			SELECT department_id 
			FROM departments 
			WHERE department_name = 'IT'
		);
        
SELECT SUM(SALARY)
FROM employees 
WHERE JOB_ID = (
    SELECT JOB_ID
    FROM JOBS
    WHERE job_title = 'programmer'
);

-- common table expression 
with temp as(
select *
from employees
limit 5 
)
 
 select * from temp ;
