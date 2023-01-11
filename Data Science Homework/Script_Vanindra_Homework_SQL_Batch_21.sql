select * from datasource.job_employee je;

-------SHOWING 20 SAMPLE ROWS IN ORDER-------
select
	*
from
	datasource.job_employee
limit 20;

---SHOWING 20 SAMPLE ROWS RANDOMLY---
select
	*
from
	datasource.job_employee
order by
	random()
limit 20;

---SHOWING JOB TITLE TYPES---
select
	job_title
from
	datasource.job_employee
group by
	job_title;

---SHOWING JOB TITLE TYPES BY ORDER---
select
	job_title
from
	datasource.job_employee
group by
	job_title
order by
	job_title;

---SHOWING EMPLOYEES HIRED ON JULY 1987---
select
	first_name,
	last_name,
	hire_date
from
	datasource.job_employee
where
	hire_date like '%07/1987';

select
	first_name,
	last_name,
	hire_date
from
	datasource.job_employee
where
	substring(hire_date, 4, 2) = '07'
	and substring(hire_date, 7, 4)= '1987'; 

---AVERAGE MIN SALARY FROM EACH DEPARTMENT ID---
select
	department_id,
	avg(min_salary) as average_minimal_salary
from
	datasource.job_employee
group by
	department_id
order by
average_minimal_salary asc;

select
	job_id,
	avg(min_salary) as average_minimal_salary
from
	datasource.job_employee
group by
	job_id
order by
average_minimal_salary asc;

---SHOWING JOB TITLE TYPES PLUS COUNT FOR EVERY TITLE AND AVG MAX SALARY---
select
	job_title,
	count(*) as jumlah_employee,
	avg(max_salary) as avg_max_salary
from
	datasource.job_employee
group by
	job_title
order by
	job_title;

---EMPLOYEE DENGAN MAX SALARY TERBESAR---
select
	first_name,
	last_name,
	job_title,
	max_salary
from
	datasource.job_employee
order by
	max_salary desc;

select distinct on (max_salary)
	first_name,
	last_name,
	job_title,
	max_salary
from
	datasource.job_employee
order by
	max_salary desc
limit 1;
	
---EMPLOYEE DENGAN LOWEST MIN_SALARY---
select
	first_name,
	last_name,
	job_title,
	phone_number,
	min_salary
from
	datasource.job_employee
order by
	min_salary asc;
	
select
	first_name,
	last_name,
	job_title,
	phone_number,
	min_salary
from
	datasource.job_employee
where
	min_salary = 2000
order by
	first_name;

select distinct on (min_salary)
	first_name,
	last_name,
	job_title,
	phone_number,
	min_salary
from 
	datasource.job_employee
order by
	min_salary asc
limit 1;

---EMPLOYEE DENGAN LOWEST SALARY---
select
	first_name,
	last_name,
	job_title,
	phone_number,
	salary
from
	datasource.job_employee
order by
	salary asc;

select
	first_name,
	last_name,
	job_title,
	phone_number,
	salary
from
	datasource.job_employee
order by
	salary asc
limit 1;

---AVERAGE MAX SALARY OF THE EMPLOYEES---
select
	avg(max_salary) as average_max_salary
from
	datasource.job_employee;
	
select
	avg(salary) as average_salary
from
	datasource.job_employee;
	
--- TRIVIAL ---
select job_title from datasource.job_employee where job_title='Accounting Manager';
select count(employee_id) from datasource.job_employee;
select sum(salary) from datasource.job_employee;
