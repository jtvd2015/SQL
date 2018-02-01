alter table [Department]
    add NumberPeople int
    check (NumberPeople >= 0)
go
update [Department] set NumberPeople = 0
go
alter table [Department]
    alter column NumberPeople int not null
