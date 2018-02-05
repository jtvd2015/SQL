create procedure with parameter (int) in procedure add +1 to it, then print out on the line and then add the number to the next +1, and then add that number to the next +1

create procedure Plus1
	@Nbr int
AS
BEGIN	
	DECLARE @cnt int;
	SET @cnt = @Nbr;
END
go
EXEC Plus1 @Nbr=10;

THEN change create to alter

alter procedure Plus1
	@Nbr int
AS
BEGIN	
	DECLARE @cnt int;
	SET @cnt = @Nbr;
	PRINT concat('The number is ', @cnt);
	SET @cnt = @cnt + 1;
	PRINT concat('The number is ', @cnt);
	SET @cnt = @cnt + 1;
	PRINT concat('The number is ', @cnt);
END
go
EXEC Plus1 @Nbr=10;

In SSMS >
The number is 10
The number is 11
The number is 12