select * from funcionario;

select pnome, unome, numero_departamento from funcionario;

select pnome || '' || unome, numero_departamento from funcionario;

-- alias
select pnome || '' || unome as "Nome Completo", numero_departamento as "Dep" from funcionario;
