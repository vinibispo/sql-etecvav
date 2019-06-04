--1
create database Compras
--2
use Compras
--3
create table Cliente(idCliente int identity primary key, nome varchar(50), endereco varchar(50), cidade varchar(50), estado char(2))
create table Produto(idProduto int identity primary key, preco decimal(5, 2), qtde int)
create table Compram(idCompra int identity (1000, 2) primary key, idCliente int, idProduto int, data datetime, qtde int, valor decimal(5, 2))
--4
alter table Cliente add sexo char(1)
--5
insert into Cliente (nome, endereco, cidade, estado, sexo) values(('José de Oliveira', 'Av. Jatobá, 34', 'Jundiaí', 'SP', 'F')('Maria da Silva', 'Av. Presidente, 12', 'Itatiba', 'MG', 'F')