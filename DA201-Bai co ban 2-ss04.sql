create database company_db;
use company_db;
create table employees(
employees_id int primary key auto_increment,
first_name varchar(50) not null unique,
last_name varchar(50) not null unique
);
ALTER TABLE Employees 
ADD COLUMN HireDate DATE,
ADD COLUMN Salary INT;


