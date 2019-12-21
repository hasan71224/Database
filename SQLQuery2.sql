create database student;

create table information
(
id integer identity (1,1) primary key not null,
name varchar (20) not null,
address varchar (20) not null,
age nchar (3) not null,
mobile nchar (14) unique not null,
cgpa varchar (4) not null,
grade varchar (2) not null
)

alter table information
drop column cgpa

alter table information
add cgpa varchar (4)

alter table information
add semester nchar (2) 