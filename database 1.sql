create database student;

create table student_information
(
id integer identity (1,1) primary key not null,
name varchar (20) not null,
address varchar (30) not null,
mobile_number nchar (11) unique not null
)
alter table student_information
add blood_group varchar (3)

alter table student_information
drop column address

alter table student_information
alter column name varchar (30)

insert into student_information
(name,mobile_number,blood_group)
values ('zaber','01715516775','o+') 

insert into student_information
(name,mobile_number,blood_group)
values ('sabiha','01821283031','ab+')