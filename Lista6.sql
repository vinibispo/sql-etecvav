select upper(nome) from Funcionario

select distinct datename (month,dataNascto), len(datename(month,dataNascto)) from Funcionario

select replace(nome,' ','-') from Funcionario

select left(nome,3), right(nome,3) from Funcionario

select sqrt(len(nome)) from Funcionario

select distinct substring(cidade,3,5) from Funcionario 

select replace(nome, ' ','') from Funcionario

select char(idfuncionario) from Funcionario where cidade='Campinas'

select ascii(nome) from Funcionario where day(dataNascto)>20

select rtrim(left(cidade,4)) from  Funcionario

select ltrim(right(cidade,6)) from Funcionario

select distinct lower(cidade) from Funcionario