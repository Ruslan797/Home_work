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



create table Employees_test
as 
select EmployeeID,concat(FirstName,' ',LastName) as FULL_NAME from Employees;