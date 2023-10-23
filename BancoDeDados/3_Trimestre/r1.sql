/*1.*/
select c.customer, c.city, c.country, s.po_number from customer c
left join sales s
on s.cust_no = c.cust_no
where c.city not like 'San Diego'

/*2.*/
select d.department, pdb.proj_id from  department d
inner join proj_dept_budget pdb
on pdb.dept_no = d.dept_no
where d.department like 'Customer Support'

/*3.*/
select e.first_name, e.hire_date, e.salary, d.department from employee e
inner join department d
on d.dept_no = e.dept_no
where d.department like 'Marketing'

/*4.*/
select j.job_title, e.full_name from job j
inner join employee e
on e.job_code = j.job_code
where j.job_title like 'Manager'

/*5.*/
select e.first_name, p.proj_name from employee e
inner join employee_project ep
on ep.emp_no = e.emp_no
inner join project p
on p.proj_id = ep.proj_id
where p.proj_name like 'DigiPizza' and e.first_name like 'Pete'

/*6.*/
select e.first_name, e.last_name, e.job_code, e.dept_no, d.department, e.job_country from employee e
inner join department d
on d.dept_no = e.dept_no
where e.job_country like 'Japan'

/*7*/
select e.first_name, e.last_name, sh.updater_id from employee e
inner join salary_history sh
on sh.emp_no = e.emp_no
where sh.updater_id like 'admin2'

/*8.*/
select e.first_name, e.last_name, e.job_code, e.dept_no, p.proj_name from employee e
inner join employee_project ep
on ep.emp_no = e.emp_no
inner join project p
on p.proj_id = ep.proj_id
where p.proj_id = 'VBASE'
