-- Inserir valores na tabela funcionário.
insert into funcionario 

--primeira maneira de inserir os valores, é colocar valores logo após o atributo funcionário que é do banco de dado
values
    ('11122233344', 'Joao', 'Silva', 'joao@tads.ifrn', 'Natal-RN', 9990, '2000-01-01', 'M', null, null),
    ('22233344455', 'Joana', 'Sales', 'jona@tads.ifrn', 'Parnamirim-RN', 8990, '2001-11-01', 'M', null, null),
    ('33344455566', 'Jose', 'Souza', 'jose@tads.ifrn', 'Teresina-PI', 7990, '2002-12-01', 'M', null, null);
--Visualizar a tabela "select * from funcionario;"


--Aqui já é delimitado os valores que serão inseridos.
insert into funcionario(cpf, pnome, unome, email, salario, data_nasc, sexo) 
values
    ('44455566677', 'Jobson', 'Soares', 'jobson@tads.ifrn', 6990, '2003-03-03', 'M');

-- Atualizar
update funcionario
set sexo='F'
where cpf='22233344455'
returning cpf, pnome, unome, sexo;

update funcionario
set email='joana@tads.ifrn'
where cpf='22233344455'
returning cpf, pnome, unome, email, sexo;


-- Remover 
delete from funcionario 
where cpf='44455566677'
returning cpf, pnome, unome, email, sexo;
