create database final;
create table customers
(
id integer identity (1,1) primary key not null,
name varchar (50) not null,
adderss varchar (50) not null,
thana varchar (50) not null,
district varchar (50) not null,
postOffice varchar (50) not null,
postCode varchar (50) not null
)
alter table customers
drop column adderss

insert into customers
values ('karim','gulshan','dhaka','gulshan model town','1212')

insert into customers
values ('sabbir','dhanmondi','dhaka','dhaka gpo','1000')

insert into customers
values ('mehedi','tejgaon','dhaka','tejgaon tso','1215')

insert into customers
values ('kamal','sylhet sadhar','sylhet','jalalabad','3107')

insert into customers
values ('zamal','rangpur sadhar','rangpur','mahiganj','5403')

insert into customers
values ('shakib','dinajpur sadhar','dinajpur','dinajpur sadhar','5201')

insert into customers
values ('nasir','thakurgaon sadhar','thakurgaon','shibganj','5102')

insert into customers
values ('mamun','tangail sadhar','tangail','korotia','1903')

insert into customers
values ('mahmud','rangamati sadhar','rangamati','betbunia','4511')

insert into customers
values ('tamim','borichong','comilla','bipulasar','3572')

select *
from customers
where district='comilla'

select *
from customers
where district != 'dhaka'

select *
from customers
where district='rangpur' or district='thakurgaon'

select *
from customers
where district != 'comilla' and postcode='1000' or postcode='4511'

create table account
(
accountid integer primary key,
accounttype varchar (50) not null,
balance varchar (50) not null,
id integer foreign key references customers (id) 
)
insert into account
values(10308,'saveings','10000',1);

insert into account
values(10309,'current','5000',2);

insert into account
values(10310,'saveings','7000',3);

insert into account
values(10311,'saveings','15000',4);

select accountid,name
from customers,account
where account.id=customers.id;

select customers.district
from customers,account
where accounttype='saveings' and account.id=customers.id;

select accountid,name
from customers,account
where district='dhaka' and account.id=customers.id;

select accountid,name
from account
INNER join customers on account.id=customers.id

select accountid,name
from account
left join customers on account.id=customers.id

select customers.name,customers.district,account.accountid
from account
right join customers on customers.id=account.id

select *
from customers
full outer join account on customers.id=account.id
order by customers.name

select *
from customers
order by name asc

select top 5*
from customers

select top 6 *
from customers
where district='dhaka'

select min (balance) AS smollestbalance
from account

select MAX (balance) as largestbalance
from account

select avg (Balance) as 
from account

