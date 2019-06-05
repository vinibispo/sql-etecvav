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
insert into Cliente (nome, endereco, cidade, estado, sexo) values('Jos� de Oliveira', 'Av. Jatob�, 34', 'Jundia�', 'SP', 'F'),('Maria da Silva', 'Av. Presidente, 12', 'Itatiba', 'MG', 'F'),
('Ant�nio Carlos', 'R. Floren�a, 5', 'Jundia�', 'SP', 'M'), ('Lu�sa de Souza', 'Av. Jatob�, 45', 'Jundia�', 'MG', 'F'), ('Carlos de Souza', 'Av. Jatob�, 45', 'Jundia�', 'SP', 'M')
--6
insert into Produto(descricao, preco, qtde) values('L�pis', 1.50, 20),('Borracha', 1.00, 15),('Caneta', 1.75, 35),('Compasso', 5.20, 10), ('R�gua', 0.75, 16), ('Papel Sulfite', 10.50, 5)
--7
insert into Compram
--8
update Cliente set estado = 'SP'
--9
select nome, estado from Cliente
--10
update Cliente set sexo = 'M' where nome = 'Jos� de Oliveira'
--11
select descricao, preco from Produto
--12
delete from Produto where descricao = 'Papel Sulfite'
--13
update Produto set qtde = 15 where descricao = 'L�pis'
--14
select top 2 upper(descricao) from Produto
--17
select nome from Cliente where cidade = 'Jundia�'
--18
select idCliente, nome from Cliente where nome like '%Carlos%'
--19
select descricao, preco, qtde from Produto where preco > 1 and qtde > 10
