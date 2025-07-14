CREATE DATABASE joinQuery;
USE joinQuery;

CREATE TABLE Salesman(
	salesman_id int NOT NULL,
    name VARCHAR(255),
    city VARCHAR(255),
    commission float,
    PRIMARY KEY(salesman_id)
);

CREATE TABLE Customer(
	customer_id int NOT NULL,
    cust_name VARCHAR(255),
    city VARCHAR(255),
    grade int,
    salesman_id int,
    PRIMARY KEY(customer_id),
    FOREIGN KEY(salesman_id) REFERENCES Salesman(salesman_id)
);

INSERT INTO Salesman ( salesman_id, name, city, commission) VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);

INSERT INTO Customer (customer_id, cust_name, city, grade, salesman_id) VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York',  200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidoe', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', NULL, 5005);

SELECT salesman.name AS salesman, customer.cust_name, customer.city
FROM salesman, customer
WHERE salesman.city = customer.city;
