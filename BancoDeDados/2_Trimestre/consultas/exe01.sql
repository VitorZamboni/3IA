/*Determine a estrutura da tabela Employee e seu conteúdo*/
select * from employee;

/* Exiba a estrutura da tabela EMPLOYEE. Ordenar o seu conteúdo pelo primeiro nome do funcionário.*/
select * from employee order by first_name;

/*Crie uma consulta para exibir o sobrenome, o codigo do cargo, a data de admissao e o telefone de cada funcionário, com o número do funcionário exibido primeiro*/
select last_name, job_code, hire_date, phone_ext from employee order by emp_no;

/* Exiba todos os códigos de cargo exclusivos da tabela EMPLOYEE. Ordene a consulta pelo código do cargo.*/
select distinct job_code from employee order by job_code;

/*Gere um relatório com o sobrenome e o salário dos funcionários que ganham mais de US$ 12.000. Ordene a consulta pelo salário em ordem decrescente.*/
select last_name, salary  from employee where salary > 12000 order by salary desc;

/*Exiba o sobrenome e o número do departamento do funcionário 85*/
select last_name, dept_no from employee where emp_no = 85;

/* Crie uma consulta para exibir o sobrenome e o salário de todos os funcionários cuja faixa salarial esteja entre US$ 40.000 e US$ 70.000. Ordene a consulta pelo salário em ordem crescente.*/
select last_name, salary from employee where salary between 40000 and 70000 order by salary;

/*  Exiba um relatório para exibir o sobrenome, o ID do cargo e a data de admissão dos funcionários cujos sobrenomes sejam Johnson e Young.*/
select last_name, job_code, hire_date from employee where last_name = 'Johnson' or last_name = 'Young';

/*Crie uma consulta que exiba o sobrenome e o número do departamento de todos os funcionários nos departamentos 120 e 623 em ordem alfabética crescente por nome.*/
select last_name, dept_no from employee where dept_no = 120 or dept_no = 623 order by first_name;

/*Exiba o sobrenome e o salário dos funcionários que ganham entre US$ 40.000 e US$ 70.000 e estão no departamento 120 ou 623.*/
select last_name, salary from employee where salary between 40000 and 70000 and dept_no in(120, 623);
