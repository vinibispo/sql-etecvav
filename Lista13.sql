use Empresa_official
--1
select Pais, COUNT(Pais) from Clientes group by Pais
--2
select sum(Preco), avg(Preco), min(Preco), max(Preco) from Produtos
--3
select Pais, count(Pais) from Clientes, Pedidos where Clientes.CodCli = Pedidos.CodCli group by Pais order by count(Pais) desc
--4
select Nome, Sobrenome, Cargo, Salario, Salario + 0.1 * Salario as 'Novo salário' from Funcionarios
--5
select sum(Preco) from DetalhesPed, Pedidos where month(DataEntrega) = '5' and year(DataEntrega) = '1997' and Pedidos.NumPed = DetalhesPed.NumPed
--6
select Clientes.CodCli, Nome, Pais from Pedidos, Clientes where Clientes.CodCli = Pedidos.CodCli order by Pais asc
--7
select Nome, Pedidos.* from Funcionarios, Pedidos where LEFT(Nome, 1) = 'A' and Funcionarios.CodFun = Pedidos.CodFun
--8
select Descr, Unidades from Fornecedores, Produtos where Produtos.CodFor = Fornecedores.CodFor and Empresa = 'Exotic Liquids'
--9
select distinct Descr from Produtos, Pedidos where count(Descr) >= 50 and year(DataPed) = 1997 and 
--10
select Categorias.Descr, Produtos.Descr from Categorias, Produtos
