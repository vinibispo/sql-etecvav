insert into Funcionario 
(idfuncionario, nome, endereco, cidade, estado, email, dataNascto)
values
(5, 'Carlos Dias', 'Av. Lapa, 121', 'Itu', 'SP', 'carlao@gmail.com', '31-03-1990'),
(6, 'Ana Maria da Cunha', 'Av. São Paulo, 338', 'Itu', 'SP', 'aninhacunha@gmail.com', '12-04-1988'),
(7, 'Cláudia Regina Martins', 'Rua Holanda, 89', 'Campinas' , 'SP', 'cregina@gmail.com', '04-12-1988'),
(8, 'Marcela Tatho', 'Rua Bélgica, 43', 'Campinas', 'SP', 'marctatho@hotmail.com', '09-11-1987'),
(9, 'Jorge Luís Rodrigues', 'Av. da Saudade, 1989', 'São Paulo', 'SP', 'jorgeluis@yahoo.com.br', '05-05-1990'),
(10, 'Ana Paula Camargo', 'Rua Costa e Silva, 33', 'Jundiaí', 'SP', 'apcamargo@gmail.com', '30-06-1991'),
(11, 'Ivo Cunha', 'Av. Raio de Luz, 100', 'Campinas', 'SP', 'ivo@bol.com.br', '11-04-1987'),
(12, 'Carlos Luís de Souza', 'Rua Nicolau Coelho, 22', 'São Paulo', 'SP', 'cis@bol.com.br', '30-04-1988')

update Funcionario
set cidade='Valinhos'
where cidade='Itu'

update Funcionario
set cargo='AI', salario='1100'
where cidade='Valinhos'

update Funcionario
set cargo='PC', salario='1700'
where cidade='Campinas'

update Funcionario
set cargo='TI', salario='750'
where cidade='Jundiaí'

select nome, cargo from Funcionario

select idfuncionario, email from Funcionario where estado='SP'

delete from Funcionario
where idfuncionario=5

select distinct cidade, estado from Funcionario where cargo='PC'