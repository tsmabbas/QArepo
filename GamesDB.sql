-- CRUD
create database if not exists gamesdb;
use gamesdb;
create table customers (
Customer_ID int primary key auto_increment,
Customer_Name varchar(50) not null,
Address varchar(100) not null,
Phone_No char(11) not null,
Email varchar(30) not null,
DOB date not null
);
create table orders (
Order_ID int primary key auto_increment,
Customer_ID int not null,
Order_Date date not null,
Order_Status char(1) not null,
foreign key (Customer_ID) references customers(Customer_ID)
);

create table games (
Game_ID int primary key auto_increment,
Title varchar(100) not null,
Unit_Price double not null,
Stock int not null,
Platform varchar(20) not null
);

create table orders_games (
Shipment_ID int primary key not null,
Order_ID int not null,
Game_ID int not null,
Quantity int not null,
foreign key (Order_ID) references orders (Order_ID),
foreign key (Game_ID) references games (Game_ID)
);

-- drop table games;
-- drop table orders_games;
-- alter table games add column genre varchar(10) not null;
-- alter table games drop column genre;


insert customer_ID , Customer_Name, Address, Email 100001, Adam, "11 ray road, London UK", Phone 01231231234,  "adam@london.com" into customers;