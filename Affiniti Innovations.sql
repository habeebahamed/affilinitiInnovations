

create table Bank(
BankID integer NOT NULL AUTO_INCREMENT,
BankName varchar(512),
constraint bk12 primary key (BankID),
constraint bk13 check (BankName NOT LIKE '%[^A-Z]%')
)


create table Person(
PersonID	integer NOT NULL AUTO_INCREMENT,
firstName varchar(50),
lastName varchar(50),
dob date,
phoneNumber varchar(10),
nic varchar(10),
gender varchar(6),
adress varchar(255),
constraint pn12 primary key (PersonID),
constraint pn13 check (firstName NOT LIKE '%[^A-Z]%')
constraint pn14 check (lastName NOT LIKE '%[^A-Z]%')
constraint pn15 check (DATEDIFF(YY, dob, GETDATE())>18)
constraint pn16 check (phoneNumber not like '%[^0-9]%')
constraint pn17 check (nic not like '%[^0-9]%')
constraint pn18 check (gender in ('Male','Female'))
)