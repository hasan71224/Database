create database mmh

create table information
(
id integer identity (1,1) primary key not null,
name varchar (50) not null,
address varchar (50) not null,
age nchar (2) not null,
bloodgroup varchar (3) not null,
number nchar (11) not null
)
alter table information
add grade varchar (3)

 alter table information
 add depertment varchar(20)

 alter table information
 drop column age

 alter table information
 drop column grade