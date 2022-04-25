CREATE DATABASE db_ecommerce

USE db_ecommerce

CREATE TABLE Users(
	Id INT PRIMARY KEY NOT NULL,
	userName VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	userPassword VARCHAR(100) NOT NULL,
	userAddress VARCHAR(100) NULL
)

CREATE TABLE Categories(
	Id INT PRIMARY KEY NOT NULL,
	webDescription VARCHAR(50)
)

CREATE TABLE Products(
	Id INT PRIMARY KEY NOT NULL,
	nameProduct VARCHAR(50) NOT NULL,
	productDescription VARCHAR(150) NOT NULL,
	price FLOAT NULL,
	FK_category INT NOT NULL,
	FK_shopper INT NOT NULL,
	FOREIGN KEY (FK_shopper) REFERENCES Users (Id),
	FOREIGN KEY (FK_category) REFERENCES Categories (Id)
)

CREATE TABLE Shopping(
	FK_buyer INT NOT NULL,
	FK_product INT NOT NULL,
	FOREIGN KEY (FK_buyer) REFERENCES Users (Id),
	FOREIGN KEY (FK_product) REFERENCES Products (Id)
)

CREATE TABLE Payment(
	id INT PRIMARY KEY NOT NULL,
	FK_buyer INT NOT NULL,
	FK_product INT NOT NULL,
	FOREIGN KEY (FK_buyer) REFERENCES Users (Id),
	FOREIGN KEY (FK_product) REFERENCES Products (Id)
)

-- INSERT
INSERT INTO Users
VALUES
(1, 'matheuscatel', 'catel@email.com', 'catel44887', '98 Sesame St. - SP'),
(2,  'isabelacatel', 'catel2@email.com', 'catel44887', '98 Sesame St. - SP'),
(3, 'pedrocatel', 'catel3@email.com', 'catel44887', '98 Sesame St. - SP')

INSERT INTO Categories
VALUES
(1, 'Hardware'),
(2, 'Headsets')

INSERT INTO Products
VALUES
('Redragon Headset', 'Best Redragon headset', 160.00, 3, 1),
('GPU Geforce', 'Live the future', 4.500, 3, 1),
('MousePad Razer', 'Smooth and silky', 220.00, 2, 1)

INSERT INTO Shopping
VALUES
(1, 3),
(2, 1),
(2, 2),
(2, 2)

INSERT INTO Payment
VALUES
(1, 3, 3),
(2, 1, 2),
(3, 2, 1),
(2, 2, 2)

SELECT * FROM Users
WHERE userAddress LIKE '%Sesame St%'

SELECT * FROM Products
WHERE Price BETWEEN 5 AND 15

UPDATE Users
SET userName = 'Matheus Catel'
WHERE Id = 1

SELECT Users.userName, SUM(Products.Price) AS Total
FROM Users
INNER JOIN Shopping ON Users.Id = Shopping.FK_buyer
INNER JOIN Products ON Products.Id = Shopping.FK_Products
GROUP BY Users.userName;

DELETE Shopping
DELETE Products
DELETE Users
DELETE Categories

select * from Users
