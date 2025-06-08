USE 210225_Buievskyi;

CREATE TABLE Employees (

EmployeeID INT auto_increment primary key,
Firstname varchar(50) not null,
Lastname varchar(50) not null,
Birthdate date,
Hiredate date default (current_date),
Salary DECIMAL(10, 2) CHECK (Salary > 0),
Email VARCHAR(100) UNIQUE
);



create schema 210225_Buievskyi;

select * from Employees;

insert into Employees (FirstName,LastName,BirthDate,Niredate,Salary,Email) values ('Ruslan','ivanov','1984'-'07'-'20',null,1,'ruslan777@gmail.com');
insert into Employees (FirstName,LastName,BirthDate,Salary,Email) values ('Nalia','Pertova',null,1000,'Nat@mail.de');

