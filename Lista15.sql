--1
select P.* from Pedidos P inner join Clientes C on P.CodCli = C.CodCli and C.Pais = 'Alemanha'
--2
select P.* from Produtos P inner join Categorias C on C.CodCategoria = P.CodCategoria and C.Descr = 'Condimentos'
--3
select P.Descr from Produtos P inner join Fornecedores F on P.CodFor = F.CodFor and F.Pais != 'EUA'
--4
select PR.Descr, PD.DataPed from Produtos PR inner join DetalhesPed DP on DP.CodProd = PR.CodProd inner join Pedidos PD on PD.NumPed = DP.NumPed and year(PD.DataPed) != 1997 and month(PD.DataPed) != 5
--5
select top 1 P.CodProd, P.Descr, P.Preco from Produtos P order by P.Preco asc
--6
select Nome, Salario from Funcionarios order by Salario desc
