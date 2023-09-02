/*1-Exiba o valor medio das vendas*/
select avg(total_value) as media_das_vendas from sales;

/*2-Exiba o novo salario que possui o menor valor*/
select min(new_salary) from salary_history;

/*3-Exiba a soma dos salarios cujo o pais do empregado seja Inglaterra*/
select sum(salary) from employee where job_country like 'England';

/*4-Exiba o total de vendas realizadas*/
select count(*) as total_vendas from sales where ship_date is not null;

/*5-Exiba o percentual medio de variacao dos salarios alterados pelo usuario Elaine*/
select avg(percent_change) from salary_history where updater_id like 'elaine';

/*6-Exiba do maior salario do relacionado a Inglaterra*/
select max(max_salary) from job where job_country like 'England';
