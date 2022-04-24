CREATE DATABASE db_marketplace

USE db_marketplace

CREATE TABLE UserBuyer(
	Id INT PRIMARY KEY NOT NULL,
	userName VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	userPassword VARCHAR(100) NOT NULL,
	userAddress VARCHAR(100) NULL
)

CREATE TABLE UserSeller (
	id INT PRIMARY KEY NOT NULL,
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
	FK_idSeller INT NOT NULL,
	FOREIGN KEY (FK_shopper) REFERENCES UserBuyer (Id),
	FOREIGN KEY (FK_category) REFERENCES Categories (Id),
	FOREIGN KEY (FK_idSeller) REFERENCES UserSeller (id)
)

CREATE TABLE Shopping(
	FK_buyer INT NOT NULL,
	FK_product INT NOT NULL,
	FOREIGN KEY (FK_buyer) REFERENCES UserBuyer (Id),
	FOREIGN KEY (FK_product) REFERENCES Products (Id)
)

CREATE TABLE Payment(
	id INT PRIMARY KEY NOT NULL,
	FK_idSeller INT NOT NULL,
	FK_buyer INT NOT NULL,
	FK_product INT NOT NULL,
	FOREIGN KEY (FK_buyer) REFERENCES UserBuyer (Id),
	FOREIGN KEY (FK_product) REFERENCES Products (Id),
	FOREIGN KEY (FK_idSeller) REFERENCES UserSeller (id)
)
