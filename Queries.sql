use alkemy_demo;

select Nombre, Apellido, Fecha_nacimiento from profesor
order by Fecha_nacimiento asc;
select * From profesor where Salario >= 65000;
select * from profesor where Fecha_nacimiento between '1980-01-01' and '1989-12-31';
Select * from Profesor limit 5;
select * from profesor where Apellido like 'P%';
select * from profesor where Fecha_nacimiento between '1980-01-01' and '1989-12-31'
And Salario > 80000;

