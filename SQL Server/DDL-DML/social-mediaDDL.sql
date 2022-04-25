CREATE DATABASE db_marketplace

USE db_social

CREATE TABLE Users(
	Id INT PRIMARY KEY NOT NULL,
	userName VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	userPassword VARCHAR(100) NOT NULL,
	userPhoto VARCHAR (200) NULL
)

CREATE TABLE Themes(
	Id INT PRIMARY KEY NOT NULL,
	webDescription VARCHAR(50)
)

CREATE TABLE Posts(
	Id INT PRIMARY KEY NOT NULL,
	postTitle VARCHAR(50) NOT NULL,
	postText VARCHAR (2000) NOT NULL,
	FK_user INT NOT NULL,
	FK_userTheme INT NOT NULL,
	FOREIGN KEY (FK_userTheme) REFERENCES Users (id),
	FOREIGN KEY (FK_user) REFERENCES Users (id)
)

-- INSERT
INSERT INTO Users
VALUES
(1, 'matheuscatel', 'catel@email.com', 'catel44887', 'photo id'),
(2,  'isabelacatel', 'catel2@email.com', 'catel44887', 'photo id'),
(3, 'pedrocatel', 'catel3@email.com', 'catel44887', 'photo id')

INSERT INTO Themes
VALUES
(1, 'description')
(2, 'description')
(3, 'description')


INSERT INTO Posts
VALUES
(1, 'Post Title', 'Post Text'),
(2, 'Post Title', 'Post Text'),
(3, 'Post Title', 'Post Text')

UPDATE Users
SET userName = 'Matheus Catel'
WHERE Id = 1

DELETE Users
DELETE Themes
DELETE Posts

select * from Users