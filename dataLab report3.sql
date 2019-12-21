create database personal_information;

create table information
(
Serial_number integer identity (1,1) primary key not null,
name varchar (50) not null,
address varchar (50) not null,
mobile_number nchar (20) unique not null,
blood_group varchar(3) not null
)
insert into information
(name,address,mobile_number,blood_group)
values ('sabid','dhaka','018654658454','O+')

insert into information
(name,address,mobile_number,blood_group)
values ('Rasel','comilla','01497209451','AB+')

insert into information
(name,address,mobile_number,blood_group)
values ('mustafiz','Jamalpur','017367936541','A+')

insert into information
(name,address,mobile_number,blood_group)
values ('Paris','Bogura','01834663456','O-')

create table result
(
result varchar (20) not null,
serial_number integer FOREIGN KEY 
REFERENCES Information(serial_number)

)
insert into result 
(result)
values ('A+')

insert into result 
(result)
values ('A-')

insert into result 
(result)
values ('B+')

insert into result 
(result)
values ('A-')

drop table result
truncate table information
drop table information
drop database personal_informatipon
