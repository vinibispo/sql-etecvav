--1
use RecursosHumanos
select cargo, count(*) as qtdeFuncCargo
from Funcionario
group by cargo
order by qtdeFuncCargo asc
--2
select cargo, count(*) as qtdeFuncCargo from Funcionario
where not cargo is null
group by cargo
--3
select cargo, avg(salario) as Media_Salarios_cargo from Funcionario
group by cargo
--4
select cargo, sum(salario) from Funcionario
group by cargo
having sum(salario)>3000
--5
select cargo, sum(salario) from Funcionario
where estado = 'SP'
group by cargo
--6
update Funcionario
set ativo = 1
where cidade = 'Jundiaí' or cidade = 'São Paulo'
--7
update Funcionario
set ativo = 0
where cidade not like 'Jundiaí' or cidade not like 'São Paulo'
--8
select ativo, count(*) from Funcionario
group by ativo
order by ativo
--9
select cidade, sum(salario) from Funcionario
group by cidade
--10
select cidade, avg(salario) from Funcionario
group by cidade
having not avg(salario) is null
--11
select cargo, sum(salario), avg(salario) from Funcionario
group by cargo
having sum(salario) < 5000
--12
select cidade, cargo, sum(salario), avg(salario) from Funcionario
group by cidade, cargo