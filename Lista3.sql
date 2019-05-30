select nome, salario*1.30 from Funcionario

select nome, salario, salario*0.80 from Funcionario where cidade='Campinas'

select nome, salario from Funcionario where salario>1500

select nome, cidade from Funcionario where not cidade='Valinhos'

select idfuncionario, cidade from Funcionario where cidade='Valinhos' or cidade='Campinas'

select idfuncionario, cargo from Funcionario where not cidade='São paulo' and salario>=1000

select nome from Funcionario where cargo is not null

select nome, salario from Funcionario where salario between 500 and 1500

select nome, email from Funcionario where email like '%hotmail%'

select nome, email from Funcionario where email like '%.br' order by nome

select nome, email from Funcionario where email not like '%.com' order by nome

select nome, email from Funcionario where email like '__r%'