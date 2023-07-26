/*Determine a estrutura da tabela Employee e seu conte�do*/
select * from employee;

/* Exiba a estrutura da tabela EMPLOYEE. Ordenar o seu conte�do pelo primeiro nome do funcion�rio.*/
select * from employee order by first_name;

/*Crie uma consulta para exibir o sobrenome, o codigo do cargo, a data de admissao e o telefone de cada funcion�rio, com o n�mero do funcion�rio exibido primeiro*/
select last_name, job_code, hire_date, phone_ext from employee order by emp_no;

/* Exiba todos os c�digos de cargo exclusivos da tabela EMPLOYEE. Ordene a consulta pelo c�digo do cargo.*/
select distinct job_code from employee order by job_code;

/*Gere um relat�rio com o sobrenome e o sal�rio dos funcion�rios que ganham mais de US$ 12.000. Ordene a consulta pelo sal�rio em ordem decrescente.*/
select last_name, salary  from employee where salary > 12000 order by salary desc;

/*Exiba o sobrenome e o n�mero do departamento do funcion�rio 85*/
select last_name, dept_no from employee where emp_no = 85;

/* Crie uma consulta para exibir o sobrenome e o sal�rio de todos os funcion�rios cuja faixa salarial esteja entre US$ 40.000 e US$ 70.000. Ordene a consulta pelo sal�rio em ordem crescente.*/
select last_name, salary from employee where salary between 40000 and 70000 order by salary;

/*  Exiba um relat�rio para exibir o sobrenome, o ID do cargo e a data de admiss�o dos funcion�rios cujos sobrenomes sejam Johnson e Young.*/
select last_name, job_code, hire_date from employee where last_name = 'Johnson' or last_name = 'Young';

/*Crie uma consulta que exiba o sobrenome e o n�mero do departamento de todos os funcion�rios nos departamentos 120 e 623 em ordem alfab�tica crescente por nome.*/
select last_name, dept_no from employee where dept_no = 120 or dept_no = 623 order by first_name;

/*Exiba o sobrenome e o sal�rio dos funcion�rios que ganham entre US$ 40.000 e US$ 70.000 e est�o no departamento 120 ou 623.*/
select last_name, salary from employee where salary between 40000 and 70000 and dept_no in(120, 623);
