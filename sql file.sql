create database student

create table student_information
(
student_id integer identity (1,1) primary key not null,
student_name varchar (50) not null,
depertment varchar (30) not null,
mobile_number nchar (11) unique not null
)
alter table student_information
add address varchar(30)

alter table student_information
add blood_group varchar (5)

alter table student_information
drop column depertment