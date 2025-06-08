# 1. Вывести id департамента , в котором работает сотрудник, в зависимости от Id сотрудника


DROP TABLE employees;

CREATE TABLE employees (
			 id INT PRIMARY KEY AUTO_INCREMENT, 
		     name VARCHAR(100), 
			 age INT,
			 salary INT, 
			 department_id INT 
             );
             
             

SELECT 
     department_id 
FROM
    employees
WHERE
    id = 1;


# 2.  Создайте хранимую процедуру get_employee_age, 
#     которая принимает id сотрудника (IN-параметр) и возвращает его возраст через OUT-параметр.


DELIMITER $$

CREATE PROCEDURE get_employee_age(IN emp_name VARCHAR(100), IN emp_id INT, OUT emp_age INT)
BEGIN
    SELECT age INTO emp_age FROM employees WHERE id = emp_id;
END $$

DELIMITER ;

SET @emp_age = NULL;
CALL get_employee_age('Ivan', 3,@emp_age); 


INSERT INTO employees (id, name, age, salary, department_id) 
VALUES (2, 'Irina', 37, 45000, 4);

CALL get_employee_age('Anna', 1, @emp_age);
CALL get_employee_age('Ivan', 3, @emp_age);

SELECT * FROM employees;

SELECT @emp_age AS Employee_Age;




# 3. Создайте хранимую процедуру increase_salary, 
#    которая принимает зарплату сотрудника (INOUT-параметр) и уменьшает ее на 10%.

DELIMITER $$

CREATE PROCEDURE increase_salary(INOUT emp_salary INT) 
BEGIN
SET emp_salary = emp_salary * 0.9;
END $$

DELIMITER ;

SET @salary = 50000;

CALL increase_salary(@salary);

SELECT @salary AS NEW_SALARY;










