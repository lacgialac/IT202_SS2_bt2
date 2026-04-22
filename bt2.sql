drop database if exists  SS2_bt2;
create database SS2_bt2;
use SS2_bt2;

create table customer(
 cusID int primary key,
 fullName varchar(100),
 email varchar(50),
 age int 
);

alter table customer 
modify cusID int auto_increment ,
modify fullName varchar(50) not null,
modify email varchar(50) not null unique,
modify age int  not null ;

alter table customer
add constraint cheakAge check  (age >=0 and  age <= 130);

alter table customer
add constraint checkEmail  check(email like '%_@_%._%');

insert into customer
value(1,"lac","lac@gmail.com", 10 )