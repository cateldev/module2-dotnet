CREATE TABLE UserReader(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	userName VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	passaword VARCHAR(50) NOT NULL
)

CREATE TABLE Ads(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Ad VARCHAR(50) NOT NULL,
	Ad_description VARCHAR(200) NOT NULL,
	salary FLOAT NOT NULL,
	contact VARCHAR(50) NOT NULL,
	FK_user INT NOT NULL,
	FOREIGN KEY (FK_User) REFERENCES UserReader (Id)
)

INSERT INTO dbo.UserReader VALUES
(1, 'matheuscatel', 'catel@hotmail.com', 'catel34443'),
(2,'isacatel', 'isa@email.com', 'catelisa332')
(3,'pedrcatel', 'pedroo@email.com', 'catelpedroca332')

SELECT * FROM dbo.UserReader

INSERT INTO dbo.Ads VALUES
(1,'Front-end Developer', 'Hiring front-end experts', 8.000, 'job@email.com'),
(2,'UI UX Designer', 'Work at MS, senior application', 12.000, 'msjob@email.com')
SELECT * FROM dbo.Ads