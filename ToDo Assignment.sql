CREATE TABLE Cateory (
	Id int primary key identity (1,1),
	Description nvarchar(30) not NULL
)
go
insert into Category (Description) 
	values ('Personal')
insert into Category (Description)
	values ('Work')
CREATE TABLE ToDo (
	Id int primary key identity(1,1),
	Task nvarchar(80) not null, 
	Priority int not null default 5
		check (Priority > 0 and Priority < 10),
	Completed bit not null default 0,
	DueDate datetime,
	
)
go
insert into [ToDo] (Task, DueDate, Priority)
	values ('Post 219 Web Project', '2018-FEB-03', 1)
insert into [ToDo] (Task, DueDate, Priority)
	values ('Eat lunch', '2018-FEB-01', 4)

select * from ToDo