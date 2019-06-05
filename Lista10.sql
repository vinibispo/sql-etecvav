








































--1
create database Compras
--2
use Compras
--3
create table Cliente(idCliente int identity primary key, nome varchar(50), endereco varchar(50), cidade varchar(50), estado char(2))
create table Produto(idProduto int identity primary key, descricao varchar(50), preco decimal(5, 2), qtde int)
create table Compram(idCompra int identity (1000, 2) primary key, idCliente int, idProduto int, data datetime, qtde int, valor decimal(5, 2))
--4
alter table Cliente add sexo char(1)
--5
insert into Cliente (nome, endereco, cidade, estado, sexo) values('José de Oliveira', 'Av. Jatobá, 34', 'Jundiaí', 'SP', 'F'),('Maria da Silva', 'Av. Presidente, 12', 'Itatiba', 'MG', 'F'),
('Antônio Carlos', 'R. Florença, 5', 'Jundiaí', 'SP', 'M'), ('Luísa de Souza', 'Av. Jatobá, 45', 'Jundiaí', 'MG', 'F'), ('Carlos de Souza', 'Av. Jatobá, 45', 'Jundiaí', 'SP', 'M')
--6
insert into Produto(descricao, preco, qtde) values('Lápis', 1.50, 20),('Borracha', 1.00, 15),('Caneta', 1.75, 35),('Compasso', 5.20, 10), ('Régua', 0.75, 16), ('Papel Sulfite', 10.50, 5)
--7
insert into Compram(idCliente, idProduto, data, qtde, valor) values(1, 1, '01-12-2010', 2, 1.50), (2, 1, '03-12-2010', 5, 1.50),(1, 3, '05-01-2011', 13, 1.75),(1, 4, '11-01-2011', 1, 5.20),(3, 2, '16-03-2011', 7, 1.00),(4, 5, '21-05-2011', 10, 0.75),(2, 6, '07-06-2011', 2, 10.50),(5, 3, '07-06-2011', 2, 0.75)
--8
update Cliente set estado = 'SP'
--9
select nome, estado from Cliente
--10
update Cliente set sexo = 'M' where nome = 'José de Oliveira'
--11
select descricao, preco from Produto
--12
delete from Produto where descricao = 'Papel Sulfite'
--13
update Produto set qtde = 15 where descricao = 'Lápis'
--14
select top 2 upper(descricao) from Produto
--17
select nome from Cliente where cidade = 'Jundiaí'
--18
select idCliente, nome from Cliente where nome like '%Carlos%'
--19
select descricao, preco, qtde from Produto where preco > 1 and qtde > 10
--20
select * from Cliente
order by nome
--21
select cidade, COUNT(cidade) from Cliente
group by cidade
--22
select SUM(preco), AVG(preco) from Produto
--23
select MAX(preco),MIN(preco) from Produto
--24
select SUM(valor * qtde) from Compram where DATEPART(year, data) = 2010
--25
select top 1 * from Compram where DATEPART(year, data) = 2011
--26
select nome from Cliente where sexo = 'F'
--27
select * from Compram where DATEPART(day, data) = 7 or DATEPART(day, data) = 11
--28
select descricao, preco, preco * 0.9 as desconto from Produto
--29
select idCliente, sum(valor) from Compram
group by idCliente
--30
update Produto set preco = 0.9 * preco where preco < 15
--31
select idProduto, DATEPART(day, data) from Compram
--32
select count(sexo) from Cliente
group by sexo
--33
delete from Compram where idCompra = 1000
--34
select descricao, SQUARE(qtde) from Produto where qtde > 15 and qtde < 25
--35
select SQRT(qtde) from Produto where descricao like 'C%'
--36
select nome from Cliente where endereco like 'Av. Jatobá%'
--37
select nome, len(nome) from Cliente
--38
select idCompra, valor, valor * 0.8 as Desconto from Compram
--39
select year(data) as ano, count(idCompra) as quantidade from Compram
group by year(data)
--40
select idCompra, day(data), datename(MONTH, data) from Compram
--41
select idProduto, sum(preco) from Produto
group by idProduto
--42
delete from Compram where idCliente between 3 and 5
--43
drop table Produto
--44
use master
drop database Compras