create database Empresa
use Empresa
create table Fornecedores(
codFor int identity,
primary key (codFor),
empresa varchar(40),
contato varchar(30),
cargo varchar(30),
endereco varchar(60),
cidade varchar(15),
cep varchar(10),
pais varchar(15)
)
create table Categorias(
codCategoria int identity,
primary key(codCategoria),
descr varchar(50)
)
create table Clientes(
codCli char(5),
primary key (codCli),
nome varchar(40),
contato varchar(30),
cargo varchar(30),
endereco varchar(60),
cidade varchar(15),
regiaqo varchar(15),
cep varchar(10),
pais varchar(15),
telefone varchar(24),
fax varchar(24)
)
create table Funcionarios(
codFun int identity,
primary key(codFun),
sobrenome varchar(20),
nome varchar(10),
cargo varchar(30),
dataNasc date,
endereco varchar(60),
cidade varchar(15),
cep varchar(10),
pais varchar(15),
fone varchar(24),
salario money default(0.0)
)
create table Produtos(
codProd int identity,
primary key(codProd),
descr varchar(40),
codFor int,
foreign key(codFor) references Fornecedores(codFor) on delete cascade,
codCategoria int,
foreign key(codCategoria) references Categorias(codCategoria) on delete cascade,
preco money default(0.0),
unidade smallint default(0),
descontinuado bit
)
create table Pedidos(
numPed int primary key,
codCli char(5) foreign key references Clientes(codCli) on delete cascade,
codFun int foreign key references Funcionarios(codFun) on delete cascade,
dataPed date,
dataEntrega date,
frete money default(0.0)
)
create table DetalhesPed(
numPed int primary key foreign key references Pedidos(numPed) on delete cascade,
codProd int foreign key references Produtos(codProd) on delete cascade,
preco money default(0.0),
qtde smallint,
desconto float
)
