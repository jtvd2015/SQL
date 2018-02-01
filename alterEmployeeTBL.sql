alter table [employee]
	add CellPhone nvarchar(12)
go
update [employee] set
    CellPhone = '5135551212'
go
alter table [employee]
	alter column CellPhone nvarchar(12) not null
go
alter table [employee]
    drop column CellPhone
go
select * from [employee]