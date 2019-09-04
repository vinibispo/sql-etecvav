use Empresa_official
--1
select Clientes.* from Clientes inner join Pedidos on year(DataPed) = 1996 and Pedidos.CodCli = Clientes.CodCli
--2
select distinct F.Nome from Funcionarios F inner join Clientes on Clientes.Nome = 'Around the horn'
inner Join Pedidos on Clientes.CodCli = Pedidos.CodCli and F.CodFun = Pedidos.CodFun
--3
select P.* from Pedidos P inner join Clientes C on C.CodCli = P.CodCli and C.Nome = 'Comércio Mineiro'
--4
select distinct F.* from Funcionarios F inner join Pedidos P on P.CodFun = F.CodFun and month(P.DataPed) = 9 and YEAR(P.DataPed) = 1996
--5
select P.* from Produtos P inner join Categorias C on C.CodCategoria = P.CodCategoria and C.Descr = 'Laticínios'
--6
select PR.*, DP.NumPed from Produtos PR inner join DetalhesPed DP on DP.CodProd = PR.CodProd inner join Pedidos PD on PD.NumPed = DP.NumPed and PD.DataPed = '1996-07-08'
--7
select F.Nome, P.NumPed from Funcionarios F inner join Pedidos P on P.CodFun = F.CodFun and P.DataPed = '1997-05-01'
--8
select F.Nome, P.* from Funcionarios F inner join Pedidos P on P.CodFun = F.CodFun and Salario > POWER(10, 5)
--9
select NumPed from Pedidos P inner join Clientes C on C.CodCli = P.CodCli and YEAR(DataPed) = 1997 and MONTH(DataPed) = 5
--10
select distinct C.Descr, P.Descr from Categorias C inner join Produtos P on P.CodCategoria = C.CodCategoria inner join DetalhesPed DP on DP.CodProd = P.CodProd inner join Pedidos PD on PD.NumPed = DP.NumPed and Qtde < 10 and year(DataPed) = 1998 order by C.Descr desc
--11
select * from Pedidos where YEAR(DataEntrega) = 1997
--12
select C.Descr, P.Descr from Categorias C inner join Produtos P on P.CodCategoria = C.CodCategoria