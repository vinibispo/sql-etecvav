
/* 1 */
select Top 1 Preco, Descr as 'maior preco'from Produtos
order by preco desc
/* 2 */
select Top 5 NumPed, DataPed from Pedidos
order by frete asc
/* 3 */
select nome, cargo, 'Clientes' as tipo
from Clientes
where Pais = 'Reino Unido'
Union 
select nome, cargo, 'funcionario' as tipo
from Funcionarios 
order by tipo
/* 4 */
select top 3 Nome, Sobrenome, Cargo, Salario from Funcionarios
order by Salario desc
/* 5 */
select top 1 Nome, Sobrenome, DataNasc from Funcionarios
order by DataNasc asc
/* 6 */
select  top 5 * from Pedidos
order by DataPed asc
/* 7 */
select top 6 * from Pedidos
where YEAR(DataPed) = '1996'
order by DataPed asc
/* 8 */
select Nome, Cargo from Funcionarios
where Pais = 'EUA'
Union
select Contato, Cargo from Fornecedores
where Pais = 'EUA'
/* 9 */
select Nome, Contato, Pais from Clientes
where Pais = 'Brasil'
Union
select Nome, Contato, Pais from Clientes
where Pais = 'Alemanha'
/* 10 */
select Nome, Contato, Cidade from Clientes
where Cidade = 'Madrid'
Union
select Nome, Contato, Cidade from Clientes
where Cidade = 'Paris'
/* 11 */
select Descr, Preco from Produtos
where CodCategoria = 2
Union
select Descr, Preco from Produtos
where CodCategoria = 4
/* 12 */
select Nome, Cargo, Pais from Funcionarios
where Pais = 'Reino Unido'
Union
select	Contato, Cargo, Pais from Fornecedores 
where Pais = 'França'
