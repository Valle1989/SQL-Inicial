CREATE DATABASE alkemy_demo;

use alkemy_demo;

select * from CURSO;

create table CURSO(
	Id int not null primary key,
    Nombre varchar(50) not null,
    Descripcion varchar(255) not null,
    Turno varchar(50) not null,
    Cupo int null
);

alter table CURSO modify Descripcion varchar(255) null;

truncate table Curso;

insert into CURSO values (101,'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35);
insert into CURSO values (102,'Matematica Discreta','','Tarde',30);
insert into CURSO values (103,null,'Fisica Cuántica','Tarde',40);
insert into CURSO values (102,'Ciencias Naturales','','Tarde',45);

update CURSO set Cupo = 25;

delete from Curso where id = 101;


create table PROFESOR(
	Id int not null primary key auto_increment,
    Nombre varchar(50) not null,
    Apellido varchar(255) not null,
    Fecha_nacimiento date not null,
    Salario int not null
);

insert into PROFESOR values (null,'Juan','Perez','1990-06-06',55000);
insert into PROFESOR values (null,'Maria Emilia','Paz','1984-07-15',72000);
insert into PROFESOR values (null,'Martín','Correa','1987-12-07',63000);
insert into PROFESOR values (null,'Lucía','Díaz','1991-02-24',45000);
insert into PROFESOR values (null,'Raúl','Martiínez','1980-10-15',85000);
insert into PROFESOR values (null,'Mabel','Ríos','1982-06-12',83000);

alter table CURSO add PROFESOR_id int not null;

insert into CURSO values (101,'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',20,1);
insert into CURSO values (102,'Matematica Discreta','','Tarde',20,2);
insert into CURSO values (103,'Programación Java','POO en Java','Noche',35,4);
insert into CURSO values (104,'Programación Web','','Noche',35,5);
insert into CURSO values (105,'Porgramación C#',',Net, Visual Studio 2019','Noche',30,6);

SELECT profesor.Apellido , curso.Nombre, curso.Turno
FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;

