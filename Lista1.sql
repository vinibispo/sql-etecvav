create database Concessionaria
use Concessionaria
create table Veiculos(
  chassi varchar(17)primary key,
  marca varchar(10),
  modelo varchar(20),
  anoFabricacao int,
  anoModelo int,
  combustivel char(1)
)
alter table Veiculos  add valor money, motor varchar(20)
alter table Veiculos drop column motor
create index indmarca on Veiculos(marca, modelo)
create index ano on Veiculos(anoFabricacao)
drop index indmarca on Veiculos
drop index ano on Veiculos
drop table Veiculos
use master
drop database Concessionaria
