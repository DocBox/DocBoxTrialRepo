CREATE DATABASE FS_Test
ON
PRIMARY (NAME=FS_TEST_DAT, FILENAME='E:\Projects\FS_TEST_DAT.MDF'),
FILEGROUP FS CONTAINS FILESTREAM (NAME=FS_TEST_FS, FILENAME='E:\Projects\FS_TEST_FOLDER')
LOG ON (NAME=FS_TEST_LOG,FILENAME='E:\Projects\FS_TEST_LOG.ldf')
GO


USE FS_Test
GO
CREATE TABLE [dbo].[FS_Table](
 [ID] UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL UNIQUE,
 [Number] varchar(20),
 [Description] varchar(50),
 [Image] varbinary(max) FILESTREAM NULL
 )
 
 
 DECLARE @img as VARBINARY(MAX)
 SELECT @img = CAST(bulkcolumn AS VARBINARY(max))
 FROM OPENROWSET (BULK 'C:\Users\Dell\Desktop\Job\Tasks.txt', SINGLE_BLOB) AS x
 
INSERT Into FS_Table(ID,Number,Description,Image) 
SELECT NEWID(), 'Testing', 'NorthWestern',
CAST(bulkcolumn AS VARBINARY(max)) FROM OPENROWSET (BULK 'C:\\Users\\Dell\\Desktop\\Job\\Tasks.txt', SINGLE_BLOB) AS x
 
 
 INSERT INTO FS_Table (ID,Number,Description,Image)
 SELECT NEWID(),'100','Microsoft',@img
 
 USE fs_test;
 GO
 select * from fs_table;
 
 select * from Test;
 
 drop table Test;
 
 INSERT Into FS_Table(ID,Number,Description) SELECT NEWID(),'Testing', 'NorthWestern';
 
 Select Image from FS_TABLE where ID='2740A15A-7C1B-40A1-B747-6BE47F75B43D'