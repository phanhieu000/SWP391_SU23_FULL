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
	
	firstName nvarchar(100) null,
	lastName nvarchar(100) null,
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
	[like] int not null,
	[view] int not null,

	ownerID int not null,

	PRIMARY KEY (id)
)
GO

CREATE TABLE [Order] (
	id int identity(1, 1) not null,
	price money not null,
	[status] int not null,
	createDate date not null,
	firstName nvarchar(100) not null,
	lastName nvarchar(100) not null,
	email varchar(255) not null,
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

CREATE TABLE OTP(
	id int identity(1, 1) not null,
	code varchar(255) not null,
	[type] varchar(255) not null,
	email varchar(150) not null,
	createDate date not null,
	isActive bit not null,


	account varchar(150) not null,

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

ALTER TABLE OTP 
ADD CONSTRAINT fk_OTP_account FOREIGN KEY (account) REFERENCES Account(userName)
GO


INSERT INTO [dbo].[Role] ([title] ,[createDate])
VALUES
		('Admin' , '2023/05/22'),
		('User' , '2023/05/22'),
		('Bloger' , '2023/05/22')
GO

INSERT INTO [dbo].[Account] ([userName] ,[password] ,[email] ,[firstName] ,[lastName] ,[address] ,[phone] ,[birthday] ,[createDate] ,[isBlock] ,[isVerify] ,[rid])
VALUES
		('admin' , '968855132DC5D0EB2ED7C0FC4EF3421E' , 'admin@gmail.com' ,N'Phan',N'Hiếu','Ha Noi' ,'0838456798' ,'05/01/2002' ,GETDATE() ,0 ,1 ,1)
GO


INSERT INTO [dbo].[Category] ([title] ,[createDate] ,[updateDate] ,[isActive])
VALUES	
		(N'Giày Cỏ Tự Nhiên' , '2023/05/22' , '2023/05/22' , 1),
		(N'Giày Cỏ Nhân Tạo' , '2023/05/22' , '2023/05/22' , 1),
		(N'Giày Fustal' , '2023/05/22' , '2023/05/22' , 1),
		(N'Giày Đá Bóng Giá Rẻ' , '2023/05/22' , '2023/05/22' , 1),
		(N'Giày Đá Bóng Trẻ Em' , '2023/05/22' , '2023/05/22' , 1)
GO

INSERT INTO [dbo].[Brand] ([name] ,[location] ,[createDate] ,[updateDate] ,[isActive])
VALUES	
		(N'Việt Nam', N'Việt Nam', '2023/05/22', '2023/05/22', 1),
		(N'Mỹ', N'Mỹ', '2023/05/22', '2023/05/22', 1),
		(N'Nhật Bản', N'Nhật Bản', '2023/05/22', '2023/05/22', 1),
		(N'Trung Quốc', N'Trung Quốc', '2023/05/22', '2023/05/22', 1)
GO

INSERT INTO [dbo].[Product] ([sku], [name], [price], [quantity], [createDate], [updateDate], [isActive], [cid], [bid])
VALUES
		('P001', N'Giày Đẹp 001', 1000000, 100, '2023/05/22', '2023/05/22', 1, 1, 1),
		('P002', N'Giày Đẹp 002', 2000000, 100, '2023/05/22', '2023/05/22', 1, 2, 2),
		('P003', N'Giày Đẹp 003', 3000000, 100, '2023/05/22', '2023/05/22', 1, 3, 3),
		('P004', N'Giày Đẹp 004', 4000000, 100, '2023/05/22', '2023/05/22', 1, 4, 4),
		('P005', N'Giày Đẹp 005', 5000000, 100, '2023/05/22', '2023/05/22', 1, 5, 4),
		('P006', N'Giày Đẹp 006', 6000000, 100, '2023/05/22', '2023/05/22', 1, 3, 2),
		('P007', N'Giày Đẹp 007', 7000000, 100, '2023/05/22', '2023/05/22', 1, 1, 2),
		('P008', N'Giày Đẹp 008', 8000000, 100, '2023/05/22', '2023/05/22', 1, 3, 4)
GO

INSERT INTO [dbo].[Size] ([title], [createDate], [updateDate], [isActive])
VALUES
		('30', '2023/05/22', '2023/05/22', 1),
		('31', '2023/05/22', '2023/05/22', 1),
		('32', '2023/05/22', '2023/05/22', 1),
		('33', '2023/05/22', '2023/05/22', 1),
		('34', '2023/05/22', '2023/05/22', 1),
		('35', '2023/05/22', '2023/05/22', 1),
		('36', '2023/05/22', '2023/05/22', 1),
		('37', '2023/05/22', '2023/05/22', 1),
		('38', '2023/05/22', '2023/05/22', 1),
		('39', '2023/05/22', '2023/05/22', 1),
		('40', '2023/05/22', '2023/05/22', 1),
		('41', '2023/05/22', '2023/05/22', 1),
		('42', '2023/05/22', '2023/05/22', 1),
		('43', '2023/05/22', '2023/05/22', 1),
		('44', '2023/05/22', '2023/05/22', 1),
		('45', '2023/05/22', '2023/05/22', 1),
		('46', '2023/05/22', '2023/05/22', 1),
		('47', '2023/05/22', '2023/05/22', 1),
		('48', '2023/05/22', '2023/05/22', 1),
		('49', '2023/05/22', '2023/05/22', 1),
		('50', '2023/05/22', '2023/05/22', 1),
		('S', '2023/05/22', '2023/05/22', 1),
		('X', '2023/05/22', '2023/05/22', 1),
		('L', '2023/05/22', '2023/05/22', 1),
		('M', '2023/05/22', '2023/05/22', 1),
		('XXL', '2023/05/22', '2023/05/22', 1),
		('XL', '2023/05/22', '2023/05/22', 1),
		('XM', '2023/05/22', '2023/05/22', 1),
		('XS', '2023/05/22', '2023/05/22', 1)
GO

INSERT INTO [dbo].[Color] ([title], [createDate], [updateDate], [isActive])
VALUES
		('Red', '2023/05/22', '2023/05/22', 1),
		('Black', '2023/05/22', '2023/05/22', 1),
		('White', '2023/05/22', '2023/05/22', 1),
		('Green', '2023/05/22', '2023/05/22', 1),
		('Violet', '2023/05/22', '2023/05/22', 1),
		('Gray', '2023/05/22', '2023/05/22', 1)
GO

INSERT INTO [dbo].[Product_Color] ([pid] ,[cid])
VALUES	(1 , 1),
		(1 , 2),
		(1 , 3),
		(1 , 4),
		(2 , 1),
		(3 , 2),
		(4 , 1),
		(5 , 3),
		(6 , 1)
GO

INSERT INTO [dbo].[Product_Size] ([pid] ,[sid])
VALUES	(1, 1),
		(1, 2),
		(1, 3),
		(1, 4),
		(1, 5),
		(2, 5),
		(3, 4),
		(4, 3),
		(5, 2),
		(6, 1),
		(7, 10)
GO