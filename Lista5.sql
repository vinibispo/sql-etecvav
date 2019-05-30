select nome, salario + pi() from Funcionario

select sqrt(day(dataNascto)) from Funcionario

select log(day(dataNascto)) from Funcionario where year(dataNascto)=1990

select nome, day(dataNascto) from Funcionario where power(day(dataNascto),3)>=1000

select round(salario + salario*0.155,0) from Funcionario where salario>1000

select abs(1500-salario) from Funcionario

select idfuncionario, sqrt(idfuncionario) from Funcionario where dataNascto <'1989-04-01'

select nome, round(salario-salario*0.35,1) from Funcionario

select log(idfuncionario) from Funcionario

select sqrt(idfuncionario) from Funcionario

select power(idfuncionario,2) from Funcionario

select abs(idfuncionario-10) from Funcionario order by idfuncionario desc
