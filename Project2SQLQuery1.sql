/*********************************************************** */
/*    Lane Chadwick Project 2 */
/* Last Modified 3/5/2020 Added -- Added inserts to the table
************************************************************************************/
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
	artist_fname VARCHAR(60) NOT NULL,	
	artist_lname VARCHAR(60)  NULL,						-- Changed lname and fname to artist_name
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
	PRIMARY KEY (borrower_id, disk_id, borrowed_date));


--Drop & create login/user

IF SUSER_ID('diskUserLC') is null
	CREATE LOGIN diskUserLC WITH PASSWORD = 'Pa$$w0rd',
	DEFAULT_DATABASE = disk_inventoryLC;

DROP USER if exists diskUserLC;

Create user diskUserLC for login diskUserLC;

--Grant REad Permission To User
Alter role db_datareader ADD MEMBER  diskUserLC;

--Project 3
USE [disk_inventoryLC]
GO

--Insert Status Values
INSERT INTO [dbo].[status]
           ([description])
     VALUES
           ('Available'),
		   ('On Loan'),
		   ('Damaged'),
		   ('Missing')
GO
--Insert genre Rows
INSERT INTO [dbo].[genre]
           ([description])
     VALUES
           ('Classic Rock'),
		   ('Country'),
		   ('Jazz'),
		   ('AltRock'),
		   ('Metal')
GO

--Insert disk types
INSERT INTO [dbo].[disk_type]
           ([description])
     VALUES
			('CD'),
			('Vinl'),
			('8Track'),
			('Cassette'),
			('DVD')

GO

--Insert artist types
INSERT INTO [dbo].[artist_type]
           ([description])
     VALUES
		('Solo'),
		('Group')
GO

USE [disk_inventoryLC]
GO

INSERT INTO [dbo].[disk]
           ([disk_name]
           ,[release_date]
           ,[genre_id]
           ,[status_id]
           ,[disk_type_id])
     VALUES
           ('Crazy Train', '1/1/1995',1,1,1),
		   ('No More Tears', '11/21/1995',1,1,1),
		   ('Red', '11/13/2000',2,2,1),
		   ('Jagged LIttle Pill','1/15/1995',1,2,1),
		   ('Candy-o', '10/10/1992',1,2,2),
		   ('Hotel California', '11/1/1997',1,2,2),
		   ('One of these Night','10/10/1992',1,1,2),
		   ('the Long Run','10/21/1979',1,2,2),
		   ('Hints, Allegations, and Things Left unsaid', '1/21/1999',4,2,1),
		   ('Blender','1/29/2000',4,1,1),
		   ('Dirt','1/27/1992',4,1,2),
		   ('Unplugged','5/23/1996',4,1,1),
		   ('Facelift','8/22/1990',4,1,2),
		   ('Black Gives Way to Blue ','11/29/2009',4,1,2),
		   ('Live','11/11/2009',4,1,1),
		   ('ten','12/1/1991',4,1,2),
		   ('Vitalogy','3/22/1994',4,1,2),
		   ('No Code','4/2/1996',4,1,1),
		   ('Backspacer','5/4/2009',4,1,1),
		   ('Home','11/25/1994',4,1,2),
		   ('Disagree','1/29/2008',4,1,1)
          
GO
Update DISK
Set release_date = '11/11/2011'
Where disk_id = 20;
GO
-- Insert Borrower Rows Part d

USE [disk_inventoryLC]
GO

INSERT INTO [dbo].[borrower]
           ([fname]
           ,[lname]
           ,[phone_num])
     VALUES
           ('Mickey', 'Mouse', '111-111-1234'),
		   ('Minnie', 'Mouse', '111-111-1233'),
		   ('Daisy', 'Duck', '111-111-2234'),
		   ('Donald', 'Duck', '111-111-4234'),
		   ('Huey', 'Mouse', '111-111-5234'),
		   ('Dewewy', 'Dog', '111-111-6234'),
		   ('Louse', 'Goose', '111-111-7234'),
		   ('Elmer', 'Fudd', '111-111-8234'),
		   ('Buzz', 'LightYear', '111-111-9234'),
		   ('Sheriff', 'Woody', '111-111-1334'),
		   ('Little Bo', 'Peep', '111-111-1434'),
		   ('Slinky', 'Dog', '111-111-1534'),
		   ('Mr. Potato', 'Head', '111-111-1634'),
		   ('Mrs.Potato', 'Head', '111-111-1734'),
		   ('Mr.', 'spell', '111-111-1834'),
		   ('Race', 'car', '111-111-1934'),
		   ('T', 'Rex', '111-111-1844'),
		   ('Jeff', 'Mouse', '111-111-1554'),
		   ('Mick', 'Ski', '111-111-1564'),
		   ('Eric', 'JP3', '111-111-1674'),
		   ('Sir', 'Daniel', '111-111-1784')
GO
--Delete the last borrower
DELETE borrower
Where borrower_id = 20;

--Insert Artist Rows Part e


USE [disk_inventoryLC]
GO

INSERT INTO [dbo].[artist]
           ([artist_fname]
           ,[artist_lname]
           ,[artist_type_id])
     VALUES
           ('Ozzy', 'Ozzbourne',1),
		   ('Taylor', 'Swift',1),
		   ('Corey', 'Taylor',1),
		   ('John', 'Lennon',1),
		   ('Alanis', 'Morrisette',1),
		   ('Chris', 'Daughtry',1),
		   ('The Cars', 'band',1),
		   ('The Eagles', 'band',1),
		   ('Ptasy', 'Cline',1),
		   ('Pearl Jam', 'hippy',2),
		   ('Shinedown', 'band',2),
		   ('Slipknot', 'band',2),
		   ('Five Finger Death Punch', 'band',1),
		   ('Cher', 'woman',1),
		   ('Breaking Benjamin', 'band',1),
		   ('Stone Temple Pilots', 'band',1),
		   ('Snoop ', 'dogg',1),
		   ('Marshal', 'Mathers',1),
		   ('DJ', 'Kalhid',1),
		   ('Easy', 'e',1),
		   ('Dr.', 'Dre',1)
GO

USE [disk_inventoryLC]
GO

INSERT INTO [dbo].[disk_has_borrower]
           ([borrower_id]
           ,[disk_id]
           ,[borrowed_date]
           ,[returned_date])
     VALUES
           (2,4,'1-2-2019', null),
		   (3,1,'1-3-2019', '2-21-2019'),
		   (3,5,'1-4-2019', '2-22-2019'),
		   (4,6,'1-5-2019', '2-23-2019'),
		   (5,7,'1-6-2019', '2-24-2019'),
		   (6,8,'1-7-2019', '2-25-2019'),
		   (7,9,'1-8-2019', '2-26-2019'),
		   (2,7,'1-9-2019', '2-27-2019'),
		   (3,4,'1-10-2019', null),
		   (2,9,'1-11-2019', '03-01-2019'),
		   (2,4,'1-12-2019', '03-01-2019'),
		   (1,4,'1-13-2019', '3-01-2019'),
		   (1,8,'1-14-2019', '3-02-2019'),
		   (8,2,'1-15-2019', '3-03-2019'),
		   (4,1,'1-16-2019', '3-04-2019'),
		   (6,9,'1-17-2019', '3-05-2019'),
		   (5,2,'1-18-2019', '3-06-2019'),
		   (5,3,'1-19-2019', '3-07-2019'),
		   (1,9,'1-20-2019', '3-08-2019'),
		   (9,4,'1-21-2019', '3-09-2019')
GO



USE [disk_inventoryLC]
GO
--G. Insert disk has artist
INSERT INTO [dbo].[disk_has_artist]
           ([disk_id]
           ,[artist_id])
     VALUES
           (1,1),
		   (2,2),
		   (1,3),
		   (1,4),
		   (1,5),
		   (5,6),
		   (1,7),
		   (1,8),
		   (7,9),
		   (1,10),
		   (9,11),
		   (1,12),
		   (2,13),
		   (4,14),
		   (3,15),
		   (5,16),
		   (7,17),
		   (3,18),
		   (10,19),
		   (11,20)
		   
GO
--h. List the disks on load that have been on loaned or not returned
SELECT borrower_id as Borrower_id, disk_id as Disk_id, borrowed_date as Borrowed_date, returned_date as Return_date
FROM disk_has_borrower
WHERE returned_date is null;
