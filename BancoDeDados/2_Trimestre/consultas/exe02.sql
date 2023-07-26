/*Execute uma consulta para exibir o
sobrenome, o codigo do cargo, a data de admiss�o  de cada funcion�rio.  Forne�a o apelido STARTDATE para a coluna
HIRE_DATE*/
select last_name, job_code, hire_date as startdate from employee;

/*Execute uma consulta para exibir o primeiro nome, o �ltimo nome e o nome completo, fornecendo os apelidos
Primeiro_Nome, Ultimo_Nome e Nome_Completo, respectivamente. Ordene sua onsulta pelo sobrenome do funcion�rio*/
select
    first_name as Primeiro_Nome,
    last_name as Ultimo_Nome,
    full_name as Nome_Completo
from employee
order by last_name;

/*Exiba os funcion�rios cujo primeiro nome, inicie com a Letra: J.*/
select * from employee where first_name like 'J%';

/* Exiba os funcion�rios cujo sobrenome, termine com a Letra: S*/
select * from employee where last_name like '%s';

/* Exiba os funcion�rios cujo sobrenome, n�o termine com a Letra: N.*/
select * from employee where last_name not like '%n';

/*Exiba todos os sobrenomes dos funcion�rios cuja quarta letra do nome seja a*/
select last_name from employee where first_name like '____a%';

/*Exiba o sobrenome de todos os funcion�rios que contenham as Letras: A e E*/
select last_name from employee where last_name like '%a%' or last_name like '%e%';

/*Exiba o primeiro nome de todos os funcion�rios que possuem o sobrenome Young*/
select first_name from employee where last_name like '%Young%';

