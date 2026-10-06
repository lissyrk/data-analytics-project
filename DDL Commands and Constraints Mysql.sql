CREATE DATABASE employee;

USE employee;

SHOW DATABASES;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

DESC Departments;

CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100) NOT NULL UNIQUE
);

DESC Location;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    designation VARCHAR(50),
    hire_date DATE DEFAULT (CURRENT_DATE),
    department_id INT,
    location_id INT,

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);

DESC Employees;

SHOW TABLES;

DESC Departments;
DESC Location;
DESC Employees;

ALTER TABLE Employees
ADD email VARCHAR(150);

DESC Employees;

ALTER TABLE Employees
MODIFY designation VARCHAR(100);

ALTER TABLE Employees
DROP COLUMN age;
DESC Employees;

ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

DESC Employees;

RENAME TABLE Departments TO Departments_Info;

RENAME TABLE Location TO Locations;

SHOW TABLES;

DROP TABLE Employees;

SHOW TABLES;

DROP DATABASE employee;

SHOW DATABASES;

DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE

);

CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    designation VARCHAR(100),
    hire_date DATE DEFAULT (CURRENT_DATE),
    department_id INT,
    location_id INT,

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);

INSERT INTO Departments (department_id, department_name)
VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT');

SELECT * FROM Departments;

INSERT INTO Location (location_name)
VALUES
('Kochi'),
('Calicut'),
('Trivandrum');

SELECT * FROM Location;

INSERT INTO Employees
(employee_name, gender, age, designation, department_id, location_id)
VALUES
('Anu', 'F', 25, 'Data Analyst', 3, 1),
('Rahul', 'M', 30, 'Software Engineer', 3, 2),
('Meera', 'F', 28, 'HR Executive', 1, 3);


SHOW TABLES;


SELECT * FROM Departments;
SELECT * FROM Location;
SELECT * FROM Employees;



