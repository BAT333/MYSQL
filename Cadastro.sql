create database cadastro 
default character set utf8mb4
default collate utf8mb4_general_ci;
use cadastro;

create table if not exists Curso(
idcurso int not null auto_increment,
nome varchar(20),
primary key(idcurso)
);

alter table curso
add column descrição varchar(20);
desc cursos;
alter table curso 
modify column nome varchar(20) unique;
alter table curso
add column totals date ;
alter table curso
modify column totals int;
alter table curso
change column totals total int;
alter table curso
rename cursos;
alter table cursos
change column descrição des varchar(20);
insert into cursos
(nome,des,carga,ano,total)
values
('o','jsj','50','2050/12/08','6');
select*from cursos;
update cursos
set nome = 'java'
where idcurso =' 1';
delete from cursos
where idcurso =' 1'; 
truncate  cursos;
drop table cursos;
drop database cadastro;



