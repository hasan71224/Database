create database customers;
create table customer_information
(
Customer_id integer identity (1,1) primary key not null,
Customer_name varchar (50) not null,
Thana varchar (50) not null,
District varchar (50) not null,
PotsOffice varchar (50) not null,
PostCode nchar (50) not null
)

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('Karim','gulshan','Dhaka','gulshan Model Town','1212')

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('rahim','palton','Dhaka','dhaka GPO','1000')

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('mehedi','tejgaon','Dhaka','tejgaon TSO','1215')

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('kamal','sylhet sadar','sylhet','jalalabad','3107')

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('zamal','rangpur sadar','rangpur','mahiganj','5403')

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('shakib','dinajpur sadar','dinajpur','jalalabad','3107')

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('nasir','thakurgaon sadar','thakurgaon','shibganj','5102')

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('mamun','tangail sadar','tangail','korotia','1903')

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('mahmud','kolampati','rangamati','betbunia','4511')

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('tamim','laksham','comilla','bipulasar','4572')

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('ahmed','hathazari','chittagong','fatahabad','4335')

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('imrul','moradnagar','comilla','bangra','3543')

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('sabbir','devidhar','comilla','dhamtee','3533')

insert into customer_information
(Customer_name,Thana,District,PotsOffice,PostCode)
values('sadman','chittagong sadar','chitagong','chawkbazar','4203')

select *
from customer_information
where district='comilla';

select *
from customer_information
where district !='dhaka';

select *
from customer_information
where district='dinajpur' or
district = 'thakurgaon';

select *
from customer_information
where potsOffice = 'dhaka GPO' or
potsOffice = 'jalalabad';

select *
from customer_information
where district != 'chittagong' and
postCode='1000' or
postCode='1215';

create table account
(
accountID integer primary key,
accountType varchar (20) not null,
balance integer not null,
cusrtomer_id integer FOREIGN KEY REFERENCES Customer_information (customer_id)
)

insert into account
values (10308, 'savings',10000 ,1)

insert into account
values (10309, 'current',50000 ,2)

insert into account
values (10311, 'savings',70000 ,3)

insert into account
values (10312, 'savings',150000 ,4)

SELECT AccountID , Customer_Name
FROM Account, customer_information
WHERE Account.cusrtomer_Id = customer_information.Customer_id

SELECT AccountID, customer_name
FROM account
INNER JOIN customer_information ON Account.Cusrtomer_id = customer_information.Customer_id

SELECT customer_information.customer_name,account.accountID
FROM customer_information
LEFT JOIN account ON customer_information.Customer_id = account.cusrtomer_id

SELECT customer_information.customer_name,customer_information.District,account.accountID
FROM account
RIGHT JOIN customer_information ON account.cusrtomer_id = customer_information.Customer_id

SELECT *
FROM customer_information
FULL outer JOIN account ON customer_information.Customer_id=account.cusrtomer_id
ORDER BY customer_information.Customer_name

SELECT *
FROM customer_information
ORDER BY Customer_name ASC