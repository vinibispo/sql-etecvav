/*1*/
select max(salario), min(salario) from Funcionarios
/*2*/
select sum(salario) where sobrenome like '%Cunha%'from Funcionarios
/*3*/
select avg(salario) where email like '%yahoo%' from Funcionarios
/*4*/
select count(data_nasc) where email not like '%br' from Funcionarios
/*5*/
select min(data_nasc) from Funcionarios
/*6*/
select max(data_nasc) as "Maior_Nascimento" from Funcionarios
/*7*/
select count(*) where cidade = 'Valinhos' from Funcionarios
/*8*/
select sum(salario) where cidade = 'Campinas' from Funcionarios
/*9*/
select avg(salario) where cidade = 'São Paulo' from Funcionarios
/*10*/
select sum(salario) where nome like 'Ana%' from Funcionarios
/*11*/
select count(*) where nome like '%Luis%' from Funcionarios
/*12*/
select max(salario), min(salario) where endereco = 'Av. São Paulo'