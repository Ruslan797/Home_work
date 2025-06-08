DELIMITER $$
CREATE PROCEDURE add_employee(IN emp_name VARCHAR(100), IN emp_age INT)
BEGIN
INSERT INTO employees (name, age,salary) VALUES (emp_name, emp_age, rand()*100);
END $$
DELIMITER ;

call add_employee('Ignat',34);
call add_employee('Olga',30);

SELECT * FROM employees;

drop procedure add_employee;

DELIMITER $$
CREATE PROCEDURE TST123 ()
begin
drop table if exists TABLE_123;
create table TABLE_123  
(name_ varchar(50), birthdate int, created_on timestamp default current_timestamp);
insert into TABLE_123 (name_,birthdate) values ('Ivan',30);
end $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE add_employee(IN emp_name VARCHAR(100), IN emp_age INT, IN department_id INT)
BEGIN
INSERT INTO employees (name, age,salary,department_id) VALUES (emp_name, emp_age, rand()*100,department_id);
END $$
DELIMITER ;

call add_employee('Natalia',50,3);

call TST123 ();

SELECT * FROM TABLE_123;

DELIMITER //
CREATE PROCEDURE P_AVG_SALARY (IN employee_id INT, OUT RES_OUT INT)
BEGIN
DECLARE avg_salary NUMERIC(10,2);
DECLARE emp_salary NUMERIC(10,2);

SELECT AVG(salary) INTO avg_salary from employees;
SET emp_salary = (select salary from employees where id = employee_id);

IF emp_salary > avg_salary 
	then set RES_OUT = 1;
else set RES_OUT = 0;
	end if;
END //
DELIMITER ;


call P_AVG_SALARY(7,@RES_OUT);

DELIMITER $$

CREATE PROCEDURE get_employee_age1(IN age1 INT,OUT name1 varchar(50))
BEGIN

SELECT name INTO name1 FROM employees WHERE age = age1;
END $$
DELIMITER ;


call get_employee_age1(41,@name1);



select @name1;


DELIMITER $$

CREATE PROCEDURE get_employee_salary(IN emp_id INT, OUT emp_salary INT)
BEGIN
    SELECT salary INTO emp_salary FROM employees WHERE id = emp_1d;
END $$

DELIMITER ;

call get_employee_salary(5,@emp_salary);

select @emp_salary;

select @RES_OUT;



SET @X = 10;

select @X+10;


DELIMITER $$

CREATE PROCEDURE update_employee_salary(INOUT emp_salary INT)
BEGIN
    SET emp_salary = emp_salary * 1.2;  -- Увеличиваем зарплату на 20%
END $$

DELIMITER ;

SET @emp_salary = 100;

call update_employee_salary(@emp_salary);

select @emp_salary;


# 1. Создайте таблицу products с колонками id (INT) и product_name (VARCHAR), price.
# 2.   Вставьте несколько записей в таблицу.
# 3. Создайте хранимую процедуру с IN-параметром для поиска имени товара по его идентификатору.
# 4.   Вызовите эту процедуру и проверьте результат.

create table products(
id int primary key auto_increment,
product_name VARCHAR (100),
price DECIMAL(10,2),
Created_on TIMESTAMP default current_timestamp

);

insert into products(product_name, price) values 
('Apfel', 50),
('Birne', 52),
('Banana', 53),
('Cetrone', 54),
('Himberen', 50)
;
select * from products;

delimiter $$
create procedure P_producs(in id_1 int)
begin
select product_name from products where id = id_1;
end$$
delimiter ;

call P_producs(2);

