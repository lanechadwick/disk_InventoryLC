/*********************************************************** */
/*2/28/2020     Lane Chadwick Project 2 */
/*********************************************************** */
use master;
go

--REmove & create disk database
DROP DATABASE IF Exists disk_inventoryLC;
go

CREATE DATABASE disk_inventoryLC;
go

USE disk_inventoryLC;
go

--create genre table
Create Table genre ( 
	genre_id INT not null PRimary Key Identity,
	description VARCHAR(60) NOT NULL
);

--create status table
Create Table status (
	status_id INT not null primary key identity,
	description VARCHAR(60) NOT NULL
);

--create disk_type table
Create Table disk_type (
	disk_type_id INT not null primary key identity,
	description VARCHAR(60) NOT NULL
);

--create artist_type table
Create Table artist_type (
	artist_type_id INT not null primary key identity,
	description VARCHAR(60) NOT NULL
);

--create borrower table
Create Table borrower (
	borrower_id INT not null primary key identity,
	fname VARCHAR(60) NOT NULL,
	lname VARCHAR(60) NOT NULL,
	phone_num VARCHAR(60) NOT NULL
);

--create artist table
Create Table artist (
	artist_id INT not null primary key identity,
	fname VARCHAR(60) NOT NULL,
	lname VARCHAR(60) NOT NULL,
	artist_type_id INT REFERENCES artist_type(artist_type_id)
	
);

--create disk table

create table disk ( 
	disk_id INT not null primary key identity,
	disk_name VARCHAR(60) NOT NULL,
	release_date DATE NOT NULL,
	genre_id INT NOT NULL REFERENCES genre(genre_id),
	status_id INT NOT NULL REFERENCES status(status_id),
	disk_type_id INT NOT NULL REFERENCES disk_type(disk_type_id)
);

--create disk_has_artist table
CREATE TABLE disk_has_artist (
	disk_id INT NOT NULL REFERENCES disk(disk_id),
	artist_id INT NOT NULL REFERENCES artist(artist_id)
	PRIMARY KEY (disk_id, artist_id)
);

--create disk_has_borrower table
CREATE TABLE disk_has_borrower (
	borrower_id INT NOT NULL REFERENCES borrower(borrower_id),
	disk_id INT NOT NULL REFERENCES disk(disk_id),
	borrowed_date DATE NOT NULL,
	returned_date DATE NULL,
	PRIMARY KEY (borrower_id, disk_id)
);

--Drop & create login/user

IF SUSER_ID('diskUserLC') is null
	CREATE LOGIN diskUserLC WITH PASSWORD = 'Pa$$w0rd',
	DEFAULT_DATABASE = disk_inventoryLC;

DROP USER if exists diskUserLC;

Create user diskUserLC for login diskUserLC;

--Grant REad Permission To User
Alter role db_datareader ADD MEMBER  diskUserLC;
