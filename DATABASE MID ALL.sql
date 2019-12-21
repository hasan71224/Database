create database Bank_Managment_System;

create table customer_information
(
Serial_number integer identity (1,1) not null,
AC_number varchar (50) primary key not null,
name varchar (50) not null,
address varchar (50) not null,
mobile_number nchar (20) unique not null,
blood_group varchar(3) not null
)
--drop column
alter table customer_information
drop column blood_group
--add column
alter table customer_information
add Branch_name varchar (50)
--alter/modify column
alter table customer_information
alter column name varchar (80)
--insert information
insert into customer_information
(AC_number,name,address,mobile_number,Branch_name)
values ('15125510111','Shaidul','jinaidaho','017920487662','Dhanmondi')

insert into customer_information
(AC_number,name,address,mobile_number,Branch_name)
values ('1512550200222','Rasel','Cumilla','01726759708','Dhanmondi')

insert into customer_information
(AC_number,name,address,mobile_number,Branch_name)
values ('151255100333','Mahmudul','Cumilla','01736795801','Muhammadpur')

insert into customer_information
(AC_number,name,address,mobile_number,Branch_name)
values ('15125510004','Paris','Bogura','01834663456','Jatrabary')

--Select information
select * from customer_information

select distinct name from customer_information

--update information
update customer_information
set AC_number='151255000111'
where AC_number='15125510111'

update customer_information
set name='Rahman'
where name='Shaidul'

--delete information
delete from customer_information
where name='Mahmudul'