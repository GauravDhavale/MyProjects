USE [master]
GO
/****** Object:  Database [team4]    Script Date: 01/23/2013 11:50:14 ******/
CREATE DATABASE [team4] ON  PRIMARY 
( NAME = N'team4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\team4.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'team4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\team4_log.ldf' , SIZE = 2816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [team4] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [team4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [team4] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [team4] SET ANSI_NULLS OFF
GO
ALTER DATABASE [team4] SET ANSI_PADDING OFF
GO
ALTER DATABASE [team4] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [team4] SET ARITHABORT OFF
GO
ALTER DATABASE [team4] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [team4] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [team4] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [team4] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [team4] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [team4] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [team4] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [team4] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [team4] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [team4] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [team4] SET  DISABLE_BROKER
GO
ALTER DATABASE [team4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [team4] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [team4] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [team4] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [team4] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [team4] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [team4] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [team4] SET  READ_WRITE
GO
ALTER DATABASE [team4] SET RECOVERY FULL
GO
ALTER DATABASE [team4] SET  MULTI_USER
GO
ALTER DATABASE [team4] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [team4] SET DB_CHAINING OFF
GO
USE [team4]
GO
/****** Object:  Table [dbo].[users]    Script Date: 01/23/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[username] [varchar](20) NOT NULL,
	[_password] [varchar](20) NOT NULL,
	[_address] [varchar](50) NULL,
	[email] [varchar](30) NULL,
	[name] [varchar](20) NULL,
	[contactno] [varchar](10) NULL,
	[_type] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Temp]    Script Date: 01/23/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Temp](
	[col1] [varchar](20) NULL,
	[col2] [int] IDENTITY(1,1) NOT NULL,
	[col3] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[statustrack]    Script Date: 01/23/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[statustrack](
	[username] [varchar](20) NULL,
	[trackid] [int] IDENTITY(1,1) NOT NULL,
	[_status] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[trackid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[specification]    Script Date: 01/23/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[specification](
	[did] [int] IDENTITY(1,1) NOT NULL,
	[brand] [varchar](20) NOT NULL,
	[model] [varchar](30) NOT NULL,
	[networktype] [varchar](20) NULL,
	[simtype] [varchar](20) NULL,
	[dimension] [varchar](20) NULL,
	[cpu] [varchar](20) NULL,
	[rom] [varchar](20) NULL,
	[ram] [varchar](20) NULL,
	[memory] [varchar](20) NULL,
	[camera] [varchar](20) NULL,
	[wifi] [varchar](20) NULL,
	[imgPath] [varchar](100) NOT NULL,
	[price] [int] NOT NULL,
 CONSTRAINT [PK__specific__D877D21600551192] PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[A]    Script Date: 01/23/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[A](
	[col1] [int] NULL,
	[col2] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 01/23/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[name] [varchar](50) NULL,
	[mail] [varchar](50) NULL,
	[mobile] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[feedback] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RequestSpecification]    Script Date: 01/23/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RequestSpecification](
	[brand] [varchar](30) NULL,
	[model] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comment]    Script Date: 01/23/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comment](
	[name] [varchar](50) NULL,
	[mail] [varchar](50) NULL,
	[mobile] [int] NOT NULL,
	[addres] [varchar](50) NOT NULL,
	[feedback] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customerprod]    Script Date: 01/23/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customerprod](
	[customer] [varchar](20) NOT NULL,
	[seller] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[price] [int] NOT NULL,
	[purchasedate] [date] NOT NULL,
	[quantity] [int] NOT NULL,
	[address] [varchar](100) NOT NULL,
	[contact] [varchar](20) NOT NULL,
	[email] [varchar](max) NOT NULL,
	[trackid] [int] IDENTITY(1,1) NOT NULL,
	[status] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[CustomerAddress]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CustomerAddress]
(
	@username			varchar(30)
)
as 
begin
	select _address, contactno, email  from users where username=@username
end
GO
/****** Object:  StoredProcedure [dbo].[Contact]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Contact]
(
  @name			varchar(50) , 
  @mail			varchar(50), 
  @mobile		varchar(50) ,
  @address		varchar(50),
  @feedback		varchar(50)
)
as
begin
insert into Feedback values(@name, @mail, @mobile, @address, @feedback)
end
GO
/****** Object:  StoredProcedure [dbo].[Combinesort]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Combinesort](@brand varchar(20),@lprice varchar(50),@hprice varchar(50))
as 
begin
select imgPath,brand,model,did from specification where brand=@brand and price between @lprice and @hprice
end
GO
/****** Object:  StoredProcedure [dbo].[CheckUsername]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CheckUsername]
(
@username		varchar(20)
)
as
begin 
select username from users where username=@username
end
GO
/****** Object:  StoredProcedure [dbo].[checkpassword]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[checkpassword]
(
@name		varchar(20),
@password	varchar(20)
)
as
begin
select * from users where username=@name and _password=@password 
end
GO
/****** Object:  StoredProcedure [dbo].[BrandSpecific]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BrandSpecific](@brand varchar(50))
as
begin
	select top 6 imgPath, brand, model,did from specification where brand= @brand
end
GO
/****** Object:  StoredProcedure [dbo].[BrandList]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BrandList]
as
begin
	select distinct brand from specification;
end
GO
/****** Object:  Table [dbo].[blacklist]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[blacklist](
	[username] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[requestProduct]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[requestProduct]
(
	@brand			varchar(30),
	@model			varchar(30)
)
as
begin 
	insert into RequestSpecification values(@brand, @model);
end
GO
/****** Object:  StoredProcedure [dbo].[Registration]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Registration]
(
@username		varchar(20),
@password		varchar(20),
@address		varchar(100),

@email			varchar(20),
@name			varchar(20),
@contactno		varchar(20),
@type			varchar(20)
)
as
begin
insert into users values(@username,@password,@address,@email,@name,@contactno,@type)
end
GO
/****** Object:  Table [dbo].[productseller]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productseller](
	[username] [varchar](20) NULL,
	[did] [int] NULL,
	[sellerprice] [int] NOT NULL,
	[dateposted] [date] NOT NULL,
	[quantity] [int] NOT NULL,
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[PriceRange]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[PriceRange](@lowprice int,@highprice int)
as
select top 6 imgPath, brand, model,did from specification where price between @lowprice and @highprice
GO
/****** Object:  Table [dbo].[permanentproduct]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[permanentproduct](
	[username] [varchar](20) NOT NULL,
	[did] [int] NOT NULL,
	[prodname] [varchar](30) NOT NULL,
	[sellerprice] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[pid] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[imageselect]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[imageselect]
(
	@did		int
)
as
begin 
select imgPath from specification where did=@did
end
GO
/****** Object:  StoredProcedure [dbo].[getSpecification]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getSpecification]
(
	@did		int
)

as 
begin 
	select did,brand, model, networktype, simtype, dimension, cpu, rom, ram, memory, camera, wifi, price from specification where did=@did
end
GO
/****** Object:  StoredProcedure [dbo].[GetRequestedPhone]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetRequestedPhone]
as
begin
	select brand, model from RequestSpecification
end
GO
/****** Object:  StoredProcedure [dbo].[getPhoneName]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getPhoneName]
(
	@did		int
)
as
begin
	select brand+' '+model "name" from specification where did=@did
end
GO
/****** Object:  StoredProcedure [dbo].[GetDID]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetDID]
(
	@brand			varchar(30),
	@model			varchar(30)
)
as
begin
	select did from specification where brand=@brand and model=@model
end
GO
/****** Object:  StoredProcedure [dbo].[Editprofile]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Editprofile]
(
@username	varchar(20)
)
as
begin
select name,username,_address,email,contactno,_type from users where username=@username
end
GO
/****** Object:  StoredProcedure [dbo].[search]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[search](@search varchar(60))
as 
select imgPath, brand, model,did from specification where brand+' '+model like '%'+@search+'%'
GO
/****** Object:  StoredProcedure [dbo].[AccSpecific]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AccSpecific]
(@acc		varchar(20) )
as
begin 
select top 3 imgPath,brand,model from specification where model=@acc
end
GO
/****** Object:  StoredProcedure [dbo].[AccList]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AccList]
as 
begin
 select distinct model from specification where brand='Accessories' 
 end
GO
/****** Object:  StoredProcedure [dbo].[ModelList]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ModelList]
(
	@brand			varchar(30)
)
as
begin
	select model from specification where brand=@brand
end
GO
/****** Object:  StoredProcedure [dbo].[loginchk]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[loginchk](@uname varchar(30),@pswd varchar(40) )
as 
begin
select _type   from users where username COLLATE Latin1_General_CS_AS =@uname and _password COLLATE Latin1_General_CS_AS =@pswd
end
GO
/****** Object:  StoredProcedure [dbo].[LatestPhones]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[LatestPhones]
as
begin
	select top 6  imgPath, brand, model,did from specification 
end
GO
/****** Object:  StoredProcedure [dbo].[InsertSpecification]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertSpecification]
(
	@brand					varchar(20),
	@model					varchar(30),
	@network				varchar(20),
	@simtype				varchar(20),
	@dimension				varchar(20),
	@cpu					varchar(20),
	@rom					varchar(20),
	@ram					varchar(20),
	@memory					varchar(20),	
	@camera					varchar(20),
	@wifi					varchar(20),
	@imgPath				varchar(100),
	@price					int
)
as
begin
	insert into specification values(@network, @brand, @model, @simtype, @dimension, @cpu, @rom, @ram, @memory, @camera, @wifi, @imgPath, @price);
	
	delete from RequestSpecification where brand=@brand and model=@model
end
GO
/****** Object:  StoredProcedure [dbo].[updatepassword]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updatepassword]
(
@name		varchar(20),
@password	varchar(20)
)
as
begin
update users set _password=@password where username=@name
end
GO
/****** Object:  StoredProcedure [dbo].[ViewStatus]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ViewStatus]
(
	@trackid			int
)
as 
begin
	select status  from customerprod where trackid=@trackid
end
GO
/****** Object:  StoredProcedure [dbo].[ViewPending]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ViewPending]
(
	@username				varchar(30)	
)	
as
begin
	select c.name "pname", c.price "price", u.name "name", c.purchasedate "date", c.quantity "quantity", c.address "address", c.contact "contact", c.email "mail", c.trackid "trackid" from customerprod c, users u where c.seller=@username and c.customer=u.username and c.status is null order by c.trackid desc
end;
GO
/****** Object:  StoredProcedure [dbo].[updatespecification]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updatespecification](@did int,@brand varchar(40),@model varchar(40), @network varchar(40),@simtype varchar(40),@dimension varchar(40),@cpu varchar(40),@rom varchar(40),@ram varchar(40),@memory varchar(40),@camera varchar(40),@wifi varchar(40) ,@price varchar(40))
as
update specification set brand=@brand,model=@model,memory=@memory,price =@price,ram =@ram,rom =@rom,cpu=@cpu,camera=@camera,wifi = @wifi,dimension=@dimension,simtype=@simtype,networktype=@network where did=@did
GO
/****** Object:  StoredProcedure [dbo].[Updateprofile]    Script Date: 01/23/2013 11:50:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Updateprofile]
(
@name		varchar(20),
@username   varchar(20),
@address	varchar(100),
@email		varchar(20),
@contactno	varchar(20)
)
as
begin
update users set name=@name,_address=@address,email=@email,contactno=@contactno where username=@username
end
GO
/****** Object:  StoredProcedure [dbo].[updateprodstatus]    Script Date: 01/23/2013 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updateprodstatus]
(
	@trackid			int
)
as 
begin
	update customerprod set status='Delivered' where trackid=@trackid
end
GO
/****** Object:  StoredProcedure [dbo].[updateprodseller]    Script Date: 01/23/2013 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[updateprodseller]
(	
	@sellerprice		int,
	@quantity			int,
	@did				int,
	@username			varchar(30)
)
as
begin
	update permanentproduct set sellerprice=@sellerprice, quantity=@quantity where did=@did and username=@username
end
GO
/****** Object:  StoredProcedure [dbo].[sellerinfo]    Script Date: 01/23/2013 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sellerinfo]
(
	@did		int
)
as
begin
select u.name "name", p.username "username", p.sellerprice "price", p.quantity "quant" from permanentproduct p, users u where p.did=@did and p.username=u.username
end
GO
/****** Object:  StoredProcedure [dbo].[InsertProductSeller]    Script Date: 01/23/2013 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertProductSeller]
(
	@userName		varchar(30),
	@did			int,
	@price			int,	
	@quantity		int,
	@name			varchar(40)
)
as
begin
	insert into productseller values (@userName, @did, @price, GETDATE(), @quantity, @name)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertProductPermanent]    Script Date: 01/23/2013 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertProductPermanent]
(
	@username			varchar(20),
	@did				int,
	@prodname			varchar(30),
	@sellerprice		int,
	@quantity			int
)

as
begin
insert into permanentproduct values(@username,@did,@prodname,@sellerprice,@quantity)
end
GO
/****** Object:  StoredProcedure [dbo].[editproduct]    Script Date: 01/23/2013 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editproduct]
(
	@username			varchar(30)
)
as
begin
	select did, prodname, sellerprice, quantity from permanentproduct where username=@username	
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteProductSeller]    Script Date: 01/23/2013 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeleteProductSeller]
(
	@did		int,
	@username	varchar(30)
)
as
begin
delete from productseller where did=@did and username=@username
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteProductPermanent]    Script Date: 01/23/2013 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeleteProductPermanent]
(
	@did		int,
	@username	varchar(30)
)
as
begin
delete from permanentproduct where did=@did and username=@username
end
GO
/****** Object:  StoredProcedure [dbo].[PendingDeliveryDetails]    Script Date: 01/23/2013 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[PendingDeliveryDetails](
@name			varchar(30),
	@price			int,
	@seller			varchar(30),
	@buyer			varchar(30),
	@quant			int,
	@address		varchar(30),
	@contact		varchar(20),
	@mail			varchar(40),
	@did			int
	)
as

begin 
	insert into customerprod(customer, seller, name, price, purchasedate, quantity, address, contact, email) values(@buyer, @seller, @name, @price, GETDATE(), @quant, @address, @contact, @mail);
	 Select @@IDENTITY 
	
	update permanentproduct set quantity=quantity-1 where did=@did and username=@seller
	
	delete from permanentproduct where quantity=0
end
GO
/****** Object:  StoredProcedure [dbo].[PendingDeliveryDetail]    Script Date: 01/23/2013 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[PendingDeliveryDetail]
(	
	@name			varchar(30),
	@price			int,
	@seller			varchar(30),
	@buyer			varchar(30),
	@quant			int,
	@address		varchar(30),
	@contact		varchar(20),
	@mail			varchar(40),
	@did			int
)
AS 
begin 
	insert into customerprod(customer, seller, name, price, purchasedate, quantity, address, contact, email) values(@buyer, @seller, @name, @price, GETDATE(), @quant, @address, @contact, @mail); Select SCOPE_IDENTITY()
	
	update permanentproduct set quantity=quantity-1 where did=@did and username=@seller
	
	delete from permanentproduct where quantity=0
end
GO
/****** Object:  StoredProcedure [dbo].[adminreview]    Script Date: 01/23/2013 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[adminreview]
as
begin
	select p.did "descid", p.username "username", u.name "name", p.name "product", p.sellerprice "price", p.quantity "quantity", p.dateposted "dateposted"  from productseller p, users u where p.username=u.username;
end
GO
/****** Object:  StoredProcedure [dbo].[admanage]    Script Date: 01/23/2013 11:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[admanage]
as
begin
	select * from productseller;
end
GO
/****** Object:  ForeignKey [fk_username4]    Script Date: 01/23/2013 11:50:35 ******/
ALTER TABLE [dbo].[blacklist]  WITH CHECK ADD  CONSTRAINT [fk_username4] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[blacklist] CHECK CONSTRAINT [fk_username4]
GO
/****** Object:  ForeignKey [fk_did]    Script Date: 01/23/2013 11:50:35 ******/
ALTER TABLE [dbo].[productseller]  WITH CHECK ADD  CONSTRAINT [fk_did] FOREIGN KEY([did])
REFERENCES [dbo].[specification] ([did])
GO
ALTER TABLE [dbo].[productseller] CHECK CONSTRAINT [fk_did]
GO
/****** Object:  ForeignKey [fk_username]    Script Date: 01/23/2013 11:50:35 ******/
ALTER TABLE [dbo].[productseller]  WITH CHECK ADD  CONSTRAINT [fk_username] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[productseller] CHECK CONSTRAINT [fk_username]
GO
/****** Object:  ForeignKey [fk_descid]    Script Date: 01/23/2013 11:50:35 ******/
ALTER TABLE [dbo].[permanentproduct]  WITH CHECK ADD  CONSTRAINT [fk_descid] FOREIGN KEY([did])
REFERENCES [dbo].[specification] ([did])
GO
ALTER TABLE [dbo].[permanentproduct] CHECK CONSTRAINT [fk_descid]
GO
/****** Object:  ForeignKey [fk_seller]    Script Date: 01/23/2013 11:50:35 ******/
ALTER TABLE [dbo].[permanentproduct]  WITH CHECK ADD  CONSTRAINT [fk_seller] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[permanentproduct] CHECK CONSTRAINT [fk_seller]
GO
