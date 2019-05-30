select nome, day(dataNascto) as dia, month(dataNascto) as mes, year(dataNascto) as ano from Funcionario

select distinct datename(month,dataNascto) as nome_mes from Funcionario order by nome_mes

select idfuncionario, nome from Funcionario where year(dataNascto)=1987

select nome, day(dataNascto) from Funcionario where month(dataNascto)=4 and year(dataNascto)=1988

select nome, dateadd(month,2,dataNascto) from Funcionario

select nome, datediff(year, dataNascto, getdate()) from Funcionario

select idfuncionario, nome, year(dataNascto) from Funcionario where (month(dataNascto) between 3 and 5) and year(dataNascto)=1990

select nome, year(dataNascto) from Funcionario where estado='SP'

select nome from Funcionario where year(dataNascto)<1990

select distinct cidade, estado from Funcionario where year(dataNascto)>1989

select * from Funcionario where year(dataNascto) in (1988,1990)

select nome from Funcionario where day(dataNascto)=30