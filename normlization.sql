use empdb;
create table department
(
id int primary key auto_increment ,
name varchar(100) not null
);

insert into department (name) value('information Techonogy'),('accounts'),('devalpment'),('testing'),('HR');



create table country (
id int primary key auto_increment,
name varchar(100) not null,
short_name char(3) not null
);

insert into country (name,short_name) 
values ('india','IND'),
('united states', 'UAE'),
('Russia','RUS'),
('chaina','CHN');

select * from department;
select * from country;

create table employee1
(
id_ int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(50)not null,
landline varchar(50),
mobile varchar(50),
salary decimal(10,2) default 0.00,
hire_data date,
department varchar(50)not null,
Department_id int not null,
foreign key (Department_id) references department (id),
country varchar(50)not null,
Country_id int not null,
Foreign key (Country_id) references country(id),
check (salary >=0)

);

show tables;

insert into employee1 (first_name,last_name,email,landline,mobile,salary,hire_data,department,country,Department_id,Country_id )
values ('John', 'Doe', 'johndoe@gmail.com', '+41 9854752365', NULL, 50000.00, '2025-12-31', 'Information Technology', 'United States', 1, 2),
('Jane', 'Smith', 'janesmith@gmail.com', '+41 975428365', '+1 9876543210', 60000.00, '2024-11-30', 'HR', 'United States', 2, 2),
('Alice', 'Johnson', 'alicejohnson@gmail.com', NULL, '+1 9854752365', 55000.00, '2023-10-15', 'Finance', 'Russia', 3, 3),
('Bob', 'Brown', 'bobbrown@gmail.com', '0123456789', NULL, 62000.00, '2022-09-10', 'Information Technology', 'Russia', 1, 3),
('Charlie', 'Davis', 'charliedavis@gmail.com', NULL, '9876543210', 58000.00, '2021-08-20', 'HR', 'India', 2, 1);

select*from employee1;

alter table employee1 drop column department , drop  column country;

desc employee1;



alter table employee1 modify Country_id int null;


                        
insert into employee1 (first_name,last_name,email,landline,mobile,salary,hire_data,Department_id,Country_id )
values
('Diana', 'Prince', 'dianaprince@gmail.com', '+41 1234567890', '+1 2345678901', 70000.00, '2023-05-15', 1, NULL),
('Bruce', 'Wayne', 'brucewayne@gmail.com', NULL, '+1 9876543210', 80000.00, '2024-06-10', 2, NULL),
('Clark', 'Kent', 'clarkkent@gmail.com', '+1 2345678910', NULL, 75000.00, '2025-07-20', 3, NULL),
('Tony', 'Stark', 'tonystark@gmail.com', NULL, '+1 1122334455', 90000.00, '2023-03-22', 1, NULL),
('Steve', 'Rogers', 'steverogers@gmail.com', '+1 2233445566', NULL, 65000.00, '2022-08-23',3,null);

use empdb;

select* from employee1;

select*from employee1 where id_=5;
select*from employee1 where first_name='tony' and last_name='strk';

select*from employee1 where first_name='steve' or last_name='rors';

select first_name,last_name,hire_data from employee1; -- select the need colums

select id_,concat(first_name,last_name),salary,hire_data from employee1;

select id_,concat(first_name,'',last_name)as full_name ,salary,hire_data as joined_date from employee1;

-- 






