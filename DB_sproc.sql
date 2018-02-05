-- create database sproc; 
go
use sproc;
go
create procedure HelloWorldSproc --change create procedure to alter procedure after the procedure has been created
AS
BEGIN
	select 'Hello, World!';
END
go
EXEC HelloWorldSproc;
go

-----------------------

alter procedure HelloWorldSproc --change create procedure to alter procedure after the procedure has been created
	@Name nvarchar(15) = 'everyone' --parametername
AS
BEGIN
	PRINT CONCAT('Hello, World to ', @Name); --change SELECT to PRINT, the results are not shown in a table format
END
go
EXEC HelloWorldSproc;

-----------------------

alter procedure HelloWorldSproc --change create procedure to alter procedure after the procedure has been created
	@Name nvarchar(15) = 'Jennifer', --'Jennifer' can be changed to whomever the name needs to be, 'everyone'
	@Nbr int = 0 
	--parameternames above
AS
BEGIN
	PRINT CONCAT('Hello, World to ', @Name, ' whose favorite number is ', @Nbr); --change SELECT to PRINT, the results are not shown in a table format // to concat manually 'Hello, world to ' + @Name + ' whose favorite number is ' + @Nbr;
END
go
EXEC HelloWorldSproc;

-----------------------

alter procedure HelloWorldSproc --change create procedure to alter procedure after the procedure has been created
	@Name nvarchar(15) = 'Jennifer', --'Jennifer' can be changed to whomever the name needs to be, 'everyone'
	@Nbr int = 0 
	--parameternames above
AS
BEGIN
	PRINT 'Hello, World to ' + @Name + ' whose favorite number is '
	+ CAST(@Nbr as varchar); --change SELECT to PRINT, the results are not shown in a table format // to concat manually 'Hello, world to ' + @Name + ' whose favorite number is ' + @Nbr;
END
go
EXEC HelloWorldSproc;
