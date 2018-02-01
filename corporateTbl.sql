drop table if exists Department
go
CREATE TABLE Department (
	Id int primary key identity(1,1),
	Name nvarchar(288) not null, 
	CostCenter int not null
        check (CostCenter >= 100000 and CostCenter <=999999),
    Active bit not null default 1
)

CREATE TABLE Manager (
    Id int primary key identity(1,1),
    FirstName nvarchar(288) not null,
    LastName nvarchar(288) not null,
    Department nvarchar(288) not null,
    DepartmentId int foreign key references Department(Id)
)

CREATE TABLE Employee (
    Id int primary key identity(1,1),
    FirstName varchar(288) not null,
    LastName varchar(288) not null,
    Birthday int,
    Job nvarchar(288) not null,
    Manager nvarchar(288) not null,
    ManagerId int foreign key references Manager(Id)
)