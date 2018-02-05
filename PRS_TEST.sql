drop database if exists PRS_TEST;
go
create database PRS_TEST;
go
use PRS_TEST;
drop table if exists [PurchaseRequestLineItems]
drop table if exists [PurchaseRequest]
drop table if exists [Product]
drop table if exists [Vendor]
drop table if exists [User]
go
CREATE TABLE [User] (
    Id int not null primary key identity(1,1),
    UserName nvarchar(30) not null,
    Password nvarchar(30) not null,
    FirstName nvarchar(30) not null,
    LastName nvarchar(30) not null,
    Phone nvarchar(12),
    Email nvarchar(80),
    IsReviewer bit not null default 0,
    IsAdmin bit not null default 0,
    Active bit not null default 1
)
go
CREATE TABLE [Vendor] (
    Id int not null primary key identity(1,1),
    Code nvarchar(10) not null,
    Name nvarchar(30) not null,
    Address nvarchar(30) not null,
    City nvarchar(30) not null,
    State nchar(2) not null,
        check (State='KY' or State='OH' or State='IN'),
    Zip nvarchar(10) not null,
    Phone nvarchar(12),
    Email nvarchar(80),
    IsRecommended bit not null default 0,
    Active bit not null default 1
)
go
CREATE TABLE [Product] (
    Id int not null primary key identity(1,1), 
    Name nvarchar(130) not null,
    VendorPartNumber nvarchar(50) not null,
    Price money not null,
    Unit nvarchar(10) not null,
    PhotoPath nvarchar(255),
    VendorId int not null references Vendor(Id),
    Active bit not null default 1,
)
go
CREATE TABLE [PurchaseRequest] (
    Id int not null primary key identity(1,1),
    Description nvarchar(80) not null,
    Justification nvarchar(255),
    DateNeeded date not null default dateadd(day, +7, getdate()),
    DeliveryMode nvarchar(25),
    Status nvarchar(10) not null default 'NEW',
    Total money not null default 0.0,
    UserId int not null default Current_user references [User](Id)
)
go
CREATE TABLE [PurchaseRequestLineItems] (
	Id int not null primary key identity(1,1),
	PurchaseRequestId int not null references [PurchaseRequest](Id),
    ProductId int not null references [Product](Id),
    Quantity int not null default 1
)
go
INSERT INTO [User] (UserName, Password, FirstName, LastName, Phone, Email, IsReviewer, IsAdmin)
    values ('jtvd2015', 'b@ByD0lL.#7', 'Jennifer', 'Wesselman', '', '', '', '')
INSERT INTO [User] (UserName, Password, FirstName, LastName, Phone, Email, IsReviewer, IsAdmin)
    values ('tyler', 'm@b3l', 'Todd', 'Ross', '', '', '', '')
select * from [User]
go
INSERT INTO [Vendor] (Code, Name, Address, City, State, Zip, Phone, Email, IsRecommended, Active)
    values (1, 'Tanten''s Brewery', '1201 Demia Way', 'Florence', 'KY', 41041, '', '', '', '')
INSERT INTO [Vendor] (Code, Name, Address, City, State, Zip, Phone, Email, IsRecommended, Active)
    values (2, 'Markham Winery', '1324 Church St', 'Piner', 'KY', 41063, '', '', '', '')
select * from [Vendor]
go
INSERT INTO [Product] (Name, VendorPartNumber, Price, Unit, PhotoPath, VendorId, Active)
    values ('Tanstafl', 001, 300, 1, '', 1, '')
select * from [Product]
go
INSERT INTO [PurchaseRequest] (Description, Justification, DateNeeded, DeliveryMode, Status, Total, UserId)
    values ('Wine','Just because I needed it','', 'USPS','', 1, 1)
select * from [PurchaseRequest]
go
INSERT INTO [PurchaseRequestLineItems] (PurchaseRequestId, ProductId, Quantity)
    values (1, 1, 1)
select * from [PurchaseRequestLineItems]