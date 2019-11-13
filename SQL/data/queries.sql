select  a.emp_no , 
	a.last_name, 
	a.first_name, 
	a.gender , 
	b.salary
 
from employees  a
 
left join salaries  b
 
on a.emp_no = b.emp_no;

select * from employees where  EXTRACT(YEAR FROM hire_date) = 1986;

select  a.dept_no, 
	b.dept_name, 
	a.emp_no, 
	c.last_name, 
	c.first_name, 
	a.from_date, 
	a.to_date 

from dept_manager a 

left join departments b 

ON a.dept_no = b.dept_no
  
left join employees c 
 
ON a.emp_no = c.emp_no ;

select  a.emp_no , 
	a.last_name, 
	a.first_name, 
	c.dept_name 

from employees  a 

left join dept_employees b 

ON a.emp_no = b.emp_no
 
left join departments c 

ON b.dept_no = c.dept_no;

select * from employees where first_name = 'Hercules' and last_name  LIKE 'B%';

select a.dept_name, 
	b.emp_no, 
	c.last_name, 
	c.first_name 

from departments a 

left join dept_employees b 

on a.dept_no = b.dept_no 

left join employees c 

ON b.emp_no = c.emp_no
 
where a.dept_name = 'Sales';

select a.dept_name, 
	b.emp_no, 
	c.last_name, 
	c.first_name 

from departments a 

left join dept_employees b 

on a.dept_no = b.dept_no 

left join employees c 

ON b.emp_no = c.emp_no
 
where a.dept_name in ('Sales', 'Development');

select count(*) as count_last_name, last_name from employees 
group by last_name order by count_last_name desc;







