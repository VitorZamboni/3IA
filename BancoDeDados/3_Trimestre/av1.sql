/*1- Exiba o nome do cliente, cidade e pais, numero da venda , onde o item vendido
e diferente e software e hardware*/
select c.customer, c.city, s.po_number, c.country, s.item_type
from customer c
inner join sales s
on c.cust_no = s.cust_no
where s.item_type not like 'software' and s.item_type not like 'hardware';

/*2- Exiba o nome do departamento e o numero do projeto cujo orcamento seja inferior a 100 000
e o departamento seja 'SoftWare Development'*/
select d.department, pdb.proj_id, pdb.projected_budget
from department d
inner join proj_dept_budget pdb
on pdb.dept_no = pdb.dept_no
where pdb.projected_budget < 100000 and d.department like 'Software Development';

/*3- Informe se existe paises sem clientes vinculados*/
select * from country co
left join customer c
on c.country = co.country
where c.cust_no is null;

/*4- Exiba o nome do empregado, o salario, o codigo do cargo, o minimo e maximo salario para os funcionarios cujo codigo
do cargo seja 'Admin' e pais de trabalho 'England'. Ordene pelo nome do funcionario*/
select e.full_name, e.salary, e.job_code, j.min_salary, j.max_salary, e.job_country
from employee e
inner join job j
on e.job_code = j.job_code
where e.job_code like 'Admin' and e.job_country = 'England'
order by e.full_name;

/*5- Exiba o primeiro nome do empregoda, a hire date, o salario e o nome do departamento
dos empregados que trabalham no canada, possuem salario superior a 30000, que foram
contratados apos 1990 e nao possuam telefone cadastrado*/
select e.first_name, e.hire_date, e.salary, d.department, e.phone_ext
from employee e
inner join department d
on d.dept_no = e.dept_no
where e.job_country = 'Canada' and e.salary > 30000 and e.hire_date > '01.01.1991 00:00'
and e.phone_ext is null ;

/*6- Informe se existe funcionario que nao tem departemento*/
select *
from employee e
left join department d
on e.dept_no = d.dept_no
where e.dept_no is null;

/*7- exiba de forma exclusiva o nome da profissao e o nome do funcionario cuja profissao = 'Engineer'*/
select distinct e.full_name, j.job_title
from employee e
inner join job j
on e.job_code = j.job_code
where j.job_title = 'Engineer' ;

/*8- Exiba o nome dos funcionarios e nome do projeto onde o nome do projeto e: 'AutoMap'*/
select e.full_name, p.proj_name
from employee e
inner join employee_project ep
on ep.emp_no = e.emp_no
inner join project p
on p.proj_id = ep.proj_id
where p.proj_name = 'AutoMap';

/*9- Exiba o nome, sobrenome, job code, dept_no, e o nome do departamento
de todos os funcinarios que trabalham no departamento Marketing*/
select e.first_name, e.last_name, e.job_code, e.dept_no, d.department
from employee e
inner join department d
on e.dept_no = d.dept_no
where d.department = 'Marketing' ;

/*10- Exiba se ha projetos sem funcionarios*/
select *
from project p
left join employee_project ep
on p.proj_id = ep.proj_id
where ep.emp_no is null;



