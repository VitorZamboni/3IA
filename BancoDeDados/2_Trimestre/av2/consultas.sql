/*1-Apresente a conteudo da tabela Country, exibindo a coluna, Country com o nome: Nome_Pais, e a coluna Currency como: Moeda
Ordene a consulta pelo Nome do pais
*/
select country as Nome_Pais, currency as Moeda from country order by country;

/*2-Exiba o nome e o codigo dos clientes que moram em San Diego*/
select customer, cust_no, city from customer where city='San Diego';

/*3-Exiba o nome dos departamentos cujo o nome nao esteja entre 601 e 699, ordene em ordem crescente*/
select department, dept_no from department
where dept_no < 601 or dept_no > 699
order by dept_no

/*4-Exiba os departamentos que possuem a numeração 55 no telefone e nao pasuam a letra A no Nome. ordene pelo codigo em ordem decrescente*/
select * from department
where phone_no like '%55%' and department not like '%A%'
order by dept_no desc

/*5-Exiba os jobs que nao estao relacionados ao pais eua*/
select * from job
where job_country != 'USA'

/*6-Exiba os jobs que possuem o salario minimo entre 20.000 e 70.000 ordene os registros de forma decrescente*/
select * from job
where min_salary > 20000 and min_salary < 70000
order by min_salary desc

/*7-Informe o nome do projeto cujo o produto seja sofware. ordene sua consulta pelo nome do projeto*/
select proj_name, product from project
where product = 'software'
order by proj_name

/*8-apresente as vendas que foram realizada em 1993. ordene pelo valor da venda*/
select * from sales
where ship_date like '%1993%'
order by total_value

/*9-construa uma consulta que apresente todos os codigos distintos da tabela vendas
orderne pelo codigo do cliente em ordem decrescente*/
select distinct cust_no from sales
order by cust_no desc

/*10-exiba o codigo da venda, o codigo do cliente e o total da enda as venda que nao
possuem a data de envio. ordene pelo codigo do cliente */
select po_number, cust_no, total_value, ship_date from sales
where ship_date is null
order by cust_no

/*11-apresente os paises que possuem o nome com exatamente 6 posicoes*/
select * from country
where country like '______'

/*12-Exiba os trabalhos cuja a penultima letra do nome seja 'e'*/
select * from job
where job_title like '%e_'

/*13-Aumento de salario em 10% para os funcionarios do departamento 672 e relacionado ao pais USA, exibir nome do funcionario*/
select first_name, last_name, dept_no, job_country, salary * 1.1 as aumento  from employee
where dept_no = 672 and job_country = 'USA'

/*14-Consulta que apresente o primeiro e o ultimo nome dos funcionarios cujo o pais de trabalho seja Japao e Italia*/
select first_name, last_name, job_country from employee
where job_country = 'Japan' or job_country ='Italy'
