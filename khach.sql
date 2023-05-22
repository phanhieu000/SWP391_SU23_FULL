use [master]
go
/*******************************************************************************
   Drop database if it exists
********************************************************************************/
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'SWP391_SU23')
BEGIN
	ALTER DATABASE [SWP391_SU23] SET OFFLINE WITH ROLLBACK IMMEDIATE;
	ALTER DATABASE [SWP391_SU23] SET ONLINE;
	DROP DATABASE [SWP391_SU23];
END
GO

CREATE DATABASE [SWP391_SU23]
GO

USE [SWP391_SU23]
GO

/*******************************************************************************
	Drop tables if exists
*******************************************************************************/
DECLARE @sql nvarchar(MAX) 
SET @sql = N'' 

SELECT @sql = @sql + N'ALTER TABLE ' + QUOTENAME(KCU1.TABLE_SCHEMA) 
    + N'.' + QUOTENAME(KCU1.TABLE_NAME) 
    + N' DROP CONSTRAINT ' -- + QUOTENAME(rc.CONSTRAINT_SCHEMA)  + N'.'  -- not in MS-SQL
    + QUOTENAME(rc.CONSTRAINT_NAME) + N'; ' + CHAR(13) + CHAR(10) 
FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS AS RC 

INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS KCU1 
    ON KCU1.CONSTRAINT_CATALOG = RC.CONSTRAINT_CATALOG  
    AND KCU1.CONSTRAINT_SCHEMA = RC.CONSTRAINT_SCHEMA 
    AND KCU1.CONSTRAINT_NAME = RC.CONSTRAINT_NAME 

EXECUTE(@sql) 

GO
DECLARE @sql2 NVARCHAR(max)=''

SELECT @sql2 += ' Drop table ' + QUOTENAME(TABLE_SCHEMA) + '.'+ QUOTENAME(TABLE_NAME) + '; '
FROM   INFORMATION_SCHEMA.TABLES
WHERE  TABLE_TYPE = 'BASE TABLE'

Exec Sp_executesql @sql2 
GO

CREATE TABLE Product (
	id int identity(1, 1) not null,
	sku nvarchar(max) not null,
	name nvarchar(max) not null,
	price money not null,
	quantity int not null,
	createDate date not null,
	updateDate date null,
	isActive bit not null,

	cid int not null,
	bid int not null,

	PRIMARY KEY (id)
)
GO

CREATE TABLE Product_Image (
	id int identity(1, 1) not null,
	title varchar(max) null,
	url varchar(max) null,
	pid int not null,
	createDate date not null,
	updateDate date null,
	isActive bit not null,

	PRIMARY KEY (id)
)
GO

CREATE TABLE Post_Image (
	id int identity(1, 1) not null,
	title varchar(max) null,
	url varchar(max) null,
	pid int not null,
	createDate date not null,
	updateDate date null,
	isActive bit not null,

	PRIMARY KEY (id)
)
GO

CREATE TABLE Category (
	id int identity(1, 1) not null,
	title nvarchar(max) not null,
	createDate date not null,
	updateDate date null,
	isActive bit not null,

	PRIMARY KEY (id)
)
GO

CREATE TABLE Brand (
	id int identity(1, 1) not null,
	name nvarchar(max) not null,
	location nvarchar(255) not null,
	createDate date not null,
	updateDate date null,
	isActive bit not null,

	PRIMARY KEY (id)
)
GO

CREATE TABLE Specification (
	id int identity(1, 1) not null,
	somethings nvarchar (100),
	createDate date not null,
	updateDate date null,
	isActive bit not null,

	pid int not null,

	PRIMARY KEY (id)
)
GO

CREATE TABLE Contact (
	id int identity(1, 1) not null,
	storeName nvarchar(255) not null,
	stoerAddress nvarchar(255) not null,
	storePhone varchar(15) not null,
	createDate date not null,
	

	PRIMARY KEY (id)
)
GO

CREATE TABLE Slider (
	id int identity(1, 1) not null,
	url varchar(max) not null,
	isActive bit not null,

	createDate date not null,
	PRIMARY KEY (id)
)
GO

CREATE TABLE Color (
	id int identity(1, 1) not null,
	title nvarchar(100) not null,
	createDate date not null,
	updateDate date null,
	isActive bit not null,

	PRIMARY KEY (id)
)
GO

CREATE TABLE Product_Color (
	pid int not null,
	cid int not null,

	PRIMARY KEY (pid, cid)
)
GO

CREATE TABLE Size (
	id int identity(1, 1) not null,
	title nvarchar(255) not null,
	createDate date not null,
	updateDate date null,
	isActive bit not null,

	PRIMARY KEY (id)
)
GO

CREATE TABLE Product_Size (
	pid int not null,
	[sid] int not null,

	PRIMARY KEY (pid, [sid])
)
GO

CREATE TABLE [Description] (
	id int identity(1, 1) not null,
	content nvarchar(max) not null,
	createDate date not null,
	updateDate date null,
	isActive bit not null,

	pid int not null,
	PRIMARY KEY (id)
)
GO

CREATE TABLE Account (
	id int identity(1, 1) not null,
	userName varchar(150) not null unique,
	[password] varchar(150) not null,
	email varchar(200) not null unique,
	[address] nvarchar(255),
	phone varchar(15),
	birthday date,
	createDate date not null,
	isBlock bit not null,
	isVerify bit not null,

	rid int not null,

	PRIMARY KEY (id)
)
GO

CREATE TABLE [Role] (
	id int identity(1, 1) not null,
	title nvarchar(100) not null,
	createDate date not null,

	PRIMARY KEY (id)
)
GO

CREATE TABLE Post (
	id int identity(1, 1) not null,
	title nvarchar(max) not null,
	detail nvarchar(max),
	link varchar(255) null,
	createDate date not null,
	updateDate date not null,
	isPublished bit,

	ownerID int not null,

	PRIMARY KEY (id)
)
GO

CREATE TABLE [Order] (
	id int identity(1, 1) not null,
	price money not null,
	[status] int not null,
	createDate date not null,
	[address] nvarchar(max) not null,
	phone varchar(15) not null,
	note nvarchar(max) null,

	aid int not null,

	PRIMARY KEY (id)	
)
GO

CREATE TABLE OrderLine (
	olid int identity(1, 1) not null,
	oid int not null,
	pid int not null,
	quantity int not null,
	price money not null,
	size nvarchar(255) null, /*optional*/
	color nvarchar(255) null, /*optional*/

	PRIMARY KEY (olid, oid, pid)
)
GO

CREATE TABLE Comment (
	id int identity (1, 1) not null,
	content nvarchar(max),
	rate int not null,
	createDate date not null,
	updateDate date not null,
	isPublished bit not null,

	pid int not null,
	aid int not null,

	PRIMARY KEY (id)
)
GO

/* Them cac rang buoc cho bang (FOREIGN KEY, ...)*/
ALTER TABLE Product_Image
ADD CONSTRAINT fk_image_product FOREIGN KEY (pid) REFERENCES Product (id)
GO

ALTER TABLE Post_Image
ADD CONSTRAINT fk_image_post FOREIGN KEY (pid) REFERENCES Post (id)
GO

ALTER TABLE Product
ADD CONSTRAINT fk_product_category FOREIGN KEY (cid) REFERENCES Category (id),
	CONSTRAINT fk_product_brand FOREIGN KEY (bid) REFERENCES Brand (id)
GO

ALTER TABLE Specification
ADD CONSTRAINT fk_spectification_product FOREIGN KEY (pid) REFERENCES Product (id)
GO

ALTER TABLE Product_Color
ADD CONSTRAINT fk_PC_color FOREIGN KEY (cid) REFERENCES Color (id),
	CONSTRAINT fk_PC_product FOREIGN KEY (pid) REFERENCES Product (id)
GO

ALTER TABLE Product_Size
ADD CONSTRAINT fk_PS_size FOREIGN KEY (sid) REFERENCES Size (id),
	CONSTRAINT fk_PS_product FOREIGN KEY (pid) REFERENCES Product (id)
GO	

ALTER TABLE [Description]
ADD CONSTRAINT fk_description_product FOREIGN KEY (pid) REFERENCES Product(id)
GO

ALTER TABLE Account
ADD CONSTRAINT fk_account_role FOREIGN KEY (rid) REFERENCES Role (id)
GO

ALTER TABLE Post
ADD CONSTRAINT fk_post_account FOREIGN KEY (ownerID) REFERENCES Account (id)
GO

ALTER TABLE [Order]
ADD CONSTRAINT fk_order_account FOREIGN KEY (aid) REFERENCES Account (id)
GO

ALTER TABLE OrderLine
ADD CONSTRAINT fk_OL_product FOREIGN KEY (pid) REFERENCES Product (id),
	CONSTRAINT fk_OL_order FOREIGN KEY (oid) REFERENCES [Order] (id)
GO

ALTER TABLE Comment
ADD CONSTRAINT fk_comment_product FOREIGN KEY (pid) REFERENCES Product (id),
	CONSTRAINT fk_comment_account FOREIGN KEY (aid) REFERENCES Account (id)
GO


INSERT INTO [dbo].[Role] ([title] ,[createDate])
VALUES
		('Admin' , '2023/05/22'),
		('User' , '2023/05/22'),
		('Bloger' , '2023/05/22')
GO

INSERT INTO [dbo].[Account] ([userName] ,[password] ,[email] ,[address] ,[phone] ,[birthday] ,[createDate] ,[isBlock] ,[isVerify] ,[rid])
VALUES
		('admin' , 'admin123' , 'admin@gmail.com' ,'Ha Noi' ,'0838456798' ,'05/01/2002' ,GETDATE() ,0 ,1 ,0)
GO