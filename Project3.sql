/** 
Lane Chadwick
Last Updated 4/8/2020
ADDED Project 4 starting line 225
ADDED Project 5 starting line 282
*/

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

--Project 4 Starts here

--3.Show the disks in your database and any associated individual artists only.
select disk_name as 'Disk Name', convert(varchar(10), release_date, 101) as 'Release Date', artist_fname as 'Artist First Name', artist_lname as 'Artist Last Name'
--substring(artist_fname,1, charindes(fname, ' '))
from disk
join disk_has_artist on disk.disk_id = disk_has_artist.disk_id
join artist on disk_has_artist.artist_id = artist.artist_id
where artist_type_id = 1
order by artist_lname, artist_fname, disk_name;
go
--4.
CREATE VIEW View_Individual_Artist
AS
	Select artist_id , artist_fname, artist_lname
	from artist
	where artist_type_id = 1;
	go

	select artist_fname as 'FirstName', artist_lname as 'LastName' 
	from View_Individual_Artist
	order by artist_lname, artist_fname
--5.
select disk_name as 'Disk Name', convert(varchar(10), release_date, 101) as 'Release Date', artist_fname as 'Group Name'
from disk 
join disk_has_artist on disk.disk_id = disk_has_artist.disk_id
join artist on disk_has_artist.artist_id = artist.artist_id
where artist.artist_id not in (select artist_id from View_Individual_Artist)
order by artist_fname;

--6.
select fname as 'First', lname as 'Last', disk_name as 'Disk Name', borrowed_date as 'Borrowed Date', returned_date as 'Returned Date'
from borrower b
join disk_has_borrower dhb on b.borrower_id = dhb.borrower_id
join disk d on dhb.disk_id = d.disk_id 
order by disk_name;
GO
--7.
select d.disk_id as 'Disk ID', disk_name as 'Disk Name', count(*) as 'Times Borrowed'
From disk d 
join disk_has_borrower dhb on d.disk_id = dhb.disk_id 
group by d.disk_id, disk_name
order by d.disk_id;
GO

--8.
select disk_name as 'Disk Name', borrowed_date as 'Borrowed Date', returned_date as 'Returned', lname as 'LastName'
from disk d 
join disk_has_borrower dhb on  d.disk_id = dhb.disk_id
join borrower b on  dhb.borrower_id = b.borrower_id
where returned_date is NULL
order by disk_name;
GO

use disk_inventoryLC
go

--Project 5 Stored Procedures

--2. Create Insert, Update, and Delete stored procedures for the artist table. 
--Update procedure accepts input parameters for all columns. 
--Insert accepts all columns as input parameters except for identity fields.
 --Delete accepts a primary key value for delete

 Drop Procedure if EXists sp_ins_artist;
 go
 Create PROCEDURE sp_ins_artist
	@artist_fname varchar(60), @artist_lname varchar(60) = NULL, @artist_type_id int
 AS
	BEGIN TRY
	INSERT INTO [dbo].[artist]
           ([artist_fname],[artist_lname],[artist_type_id])
     VALUES
         (@artist_fname
		 ,@artist_lname
		 ,@artist_type_id)
		 
		 END TRY
		 BEGIN CATCH
			PRINT 'An error occured.';
			PRINT 'Message: ' + Convert(varchar(200), ERROR_MESSAGE());
		 END CATCH
GO
GRANT EXECUTE ON sp_ins_artist TO diskUserLC;
EXEC sp_ins_artist  'Cher', NULL, 1;
EXEC sp_ins_artist  'Jared', 'Leto', 11;
GO

DROP PROCEDURE IF EXISTS sp_upd_artist;
go
CREATE PROCEDURE sp_upd_artist
	@artist_id int, @artist_fname varchar(60), @artist_lname varchar(60) = NULL, @artist_type_id int
	as
BEGIN TRY
UPDATE [dbo].[artist]
   SET [artist_fname] = @artist_fname
      ,[artist_lname] = @artist_lname
      ,[artist_type_id] = @artist_type_id
 WHERE artist_id = @artist_id;
 END TRY
 BEGIN CATCH
 PRINT 'An error Occured.';
 PRINT 'MESSAGE: ' + Convert(varchar(200), ERROR_MESSAGE());
 END CATCH
GO



	Grant EXECUTE ON sp_upd_artist TO diskUserLC;
	EXEC sp_ins_artist  'Cher', NULL, 1;
	EXEC sp_ins_artist  'Jared', 'Leto', 11;
	GO

	DROP PROCEDURE IF EXISTS sp_del_artist;
go
CREATE PROCEDURE sp_del_artist
	@artist_id int
	as
BEGIN TRY
DELETE FROM [dbo].[artist]
      WHERE artist_id = @artist_id

 END TRY
 BEGIN CATCH
 PRINT 'An error Occured.';
 PRINT 'MESSAGE: ' + Convert(varchar(200), ERROR_MESSAGE());
 END CATCH
GO

	Grant EXECUTE ON sp_del_artist TO diskUserLC;
	EXEC sp_del_artist 22;
	EXEC sp_del_artist  'test';
	GO

--3 Create Insert, Update, and Delete stored procedures for the borrower table.
 --Update procedure accepts input parameters for all columns. 
 --Insert accepts all columns as input parameters except for identity fields. 
 --Delete accepts a primary key value for delete.

  Drop Procedure if EXists sp_ins_borrower;
 go
 Create PROCEDURE sp_ins_borrower
	@fname varchar(60), @lname varchar(60), @phone_num varchar(50)
 AS
	BEGIN TRY
INSERT INTO [dbo].[borrower]
           ([fname]
           ,[lname]
           ,[phone_num])
     VALUES
           (@fname
           ,@lname
           ,@phone_num)
		 END TRY
		 BEGIN CATCH
			PRINT 'An error occured.';
			PRINT 'Message: ' + Convert(varchar(200), ERROR_MESSAGE());
		 END CATCH
GO
GRANT EXECUTE ON sp_ins_borrower TO diskUserLC;
EXEC sp_ins_borrower  'Eeyore', 'Doinkey', '2082221234';
EXEC sp_ins_borrower 'Eeyore', NULL, '2085985988';
GO

  Drop Procedure if EXists sp_upd_borrower;
 go
 Create PROCEDURE sp_upd_borrower
	@borrower_id int, @fname varchar(60), @lname varchar(60), @phone_num varchar(50)
 AS
	BEGIN TRY
UPDATE [dbo].[borrower]
   SET [fname] = @fname 
      ,[lname] = @lname
      ,[phone_num] = @phone_num
 WHERE borrower_id = @borrower_id;
		 END TRY
		 BEGIN CATCH
			PRINT 'An error occured.';
			PRINT 'Message: ' + Convert(varchar(200), ERROR_MESSAGE());
		 END CATCH
GO
GRANT EXECUTE ON sp_ins_borrower TO diskUserLC;
EXEC sp_upd_borrower 22,  'Eeyore', 'Doinkey', '208-222-1234';
EXEC sp_upd_borrower 22,'Eeyore', NULL, '2085985988';
GO

  Drop Procedure if EXists sp_del_borrower;
 go
 Create PROCEDURE sp_del_borrower
	@borrower_id int
 AS
	BEGIN TRY

DELETE FROM [dbo].[borrower]
      WHERE borrower_id = @borrower_id
		 END TRY
		 BEGIN CATCH
			PRINT 'An error occured.';
			PRINT 'Message: ' + Convert(varchar(200), ERROR_MESSAGE());
		 END CATCH
GO
GRANT EXECUTE ON sp_del_borrower TO diskUserLC;
EXEC sp_del_borrower 22;
EXEC sp_del_borrower 2;
GO

-- 4. Create Insert, Update, and Delete stored procedures for the disk table. 
--Update procedure accepts input parameters for all columns. Insert accepts all columns as input parameters except for identity fields. 
--Delete accepts a primary key value for delete

Drop Procedure if EXists sp_ins_disk;
 go
 Create PROCEDURE sp_ins_disk
	@disk_name varchar(60), @release_date date, @genre_id int, @status_id int, @disk_type_id int
 AS
	BEGIN TRY


INSERT INTO [dbo].[disk]
           ([disk_name]
           ,[release_date]
           ,[genre_id]
           ,[status_id]
           ,[disk_type_id])
     VALUES
           (@disk_name,
            @release_date,
           @genre_id,
           @status_id,
           @disk_type_id)

		 END TRY
		 BEGIN CATCH
			PRINT 'An error occured.';
			PRINT 'Message: ' + Convert(varchar(200), ERROR_MESSAGE());
		 END CATCH
GO
GRANT EXECUTE ON sp_ins_disk TO diskUserLC;
EXEC sp_ins_disk 'Lightning Bolt', '2/2/2013',4,1,1;
EXEC sp_ins_disk 'Eeyore', '2/2/2011',NULL,1,1;
GO

Drop Procedure if EXists sp_upd_disk;
 go
 Create PROCEDURE sp_upd_disk
	@disk_id int, @disk_name varchar(60), @release_date date, @genre_id int, @status_id int, @disk_type_id int
 AS
	BEGIN TRY
UPDATE [dbo].[disk]
   SET [disk_name] = @disk_name
      ,[release_date] = @release_date
      ,[genre_id] =  @genre_id
      ,[status_id] = @status_id
      ,[disk_type_id] = @disk_type_id
 WHERE disk_id = @disk_id

		 END TRY
		 BEGIN CATCH
			PRINT 'An error occured.';
			PRINT 'Message: ' + Convert(varchar(200), ERROR_MESSAGE());
		 END CATCH
GO
GRANT EXECUTE ON sp_upd_disk TO diskUserLC;
EXEC sp_upd_disk 22,'Lightning Bolt updated', '2/2/2013',4,1,1;
EXEC sp_upd_disk 2,'Eeyore', '2/2/2011',NULL,1,1;
GO

Drop Procedure if EXists sp_del_disk;
 go
 Create PROCEDURE sp_del_disk
	@disk_id int
 AS
	BEGIN TRY
DELETE FROM [dbo].[disk]
      WHERE disk_id = @disk_id
		 END TRY
		 BEGIN CATCH
			PRINT 'An error occured.';
			PRINT 'Message: ' + Convert(varchar(200), ERROR_MESSAGE());
		 END CATCH
GO
GRANT EXECUTE ON sp_del_disk TO diskUserLC;
EXEC sp_del_disk 22;
EXEC sp_del_disk 4;
GO
