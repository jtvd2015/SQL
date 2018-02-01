CREATE TABLE Contact (
	ContactID int primary key identity(10,10),
	FirstName varchar(50) not null, 
	LastName varchar(50) not null,
	Email varchar(50), 
	Phone varchar (12) not null
)
go
Insert into [Contact] (FirstName, LastName, Email, Phone)
values ('Carole', 'Wesselman', 'carolewesselman@gmail.com', '8594681630');
Insert into [Contact] (FirstName, LastName, Email, Phone)
values ('Jude', 'Wesselman', 'judewesselman@gmail.com', '8596285715');
Insert into [Contact] (FirstName, LastName, Email, Phone)
values ('Karma', 'Karma', 'kc082170@gmail.com', '5135456744');
Insert into [Contact] (FirstName, LastName, Email, Phone)
values ('Sis', 'Wesselman', 'wesus1 @live.com', '8593567568');
Insert into [Contact] (FirstName, LastName, Email, Phone)
values ('Anthony', 'Smith', '', '8596533720');