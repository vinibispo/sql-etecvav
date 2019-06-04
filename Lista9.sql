use RecursosHumanos
--1
select top 4 nome from Funcionario
--2
select top 2 * from Funcionario where cidade = 'Valinhos'
--3
select top 1 dataNascto from Funcionario
order by dataNascto asc
--4
select top 2 cidade, count(nome) as qtdFunc from Funcionario
group by cidade
--5
select top 2 cargo, count(nome) as qtdFunc from Funcionario
group by cargo
--6
select top 30 percent * from Funcionario
--7
select top 6 nome, email from Funcionario
--8
select top 70 percent idfuncionario, cargo, ativo from Funcionario
--9
select top 1 idfuncionario, salario from Funcionario
order by salario asc
--10
select top 1 nome, salario from Funcionario
order by salario desc
--11
select top 1 nome, endereco from Funcionario
--12
select top 90 percent * from Funcionario
--13
select top 1 * from Funcionario
where cidade = 'São Paulo'
--14
select top 20 percent nome, endereco, cidade, estado from Funcionario
--15
select top 2 * from Funcionario
where DATEPART(year, dataNascto) = 1988