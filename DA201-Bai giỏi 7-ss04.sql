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
INSERT INTO Employees (First_Name, Last_Name, HireDate, Salary) VALUES
('Nguyễn', 'Văn An', '2023-01-15', 15000000),
('Trần', 'Thị Bình', '2023-03-20', 12000000),
('Lê', 'Văn Cường', '2023-06-10', 18000000);
UPDATE Employees 
SET HireDate = '2021-08-01' 
WHERE First_Name = 'David';
DELETE FROM Employees 
WHERE Employees_ID = 1;
DELETE FROM Employees 
WHERE Salary < 5000 limit 10;
SELECT * FROM Employees;
SELECT * FROM Employees 
WHERE Salary > 5000;
SELECT * FROM Employees 
ORDER BY HireDate DESC;
ALTER TABLE Employees 
ADD COLUMN Department VARCHAR(50);
UPDATE Employees SET Department = 'IT' WHERE Employees_ID = 1;
UPDATE Employees SET Department = 'HR' WHERE Employees_ID = 2;
UPDATE Employees SET Department = 'Sales' WHERE Employees_ID = 3;
SELECT 
    Department AS 'Tên bộ phận',
    AVG(Salary) AS 'Lương trung bình',
    COUNT(*) AS 'Số lượng nhân viên'
FROM Employees 
GROUP BY Department
HAVING AVG(Salary) > 5000;