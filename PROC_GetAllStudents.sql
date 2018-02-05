create procedure GetAllStudents
AS
BEGIN
	SELECT * from Student;
END
go
EXEC GetAllStudents;

-----------------------

alter procedure GetAllStudents
AS
BEGIN
	SELECT Id, CONCAT(FirstName, ' ', LastName) as 'Name', GPA, SAT from Student;
END
go
EXEC GetAllStudents;

-----------------------

alter procedure GetAllStudents
AS
BEGIN
	SELECT Id, CONCAT(FirstName, ' ', LastName) as 'Name', GPA, SAT from Student
	order by LastName
END
go
EXEC GetAllStudents;

-----------------------

alter procedure GetAllStudents
	@GPAGTE decimal (4,1) = 3.0 --GPA >=
AS
BEGIN
	SELECT Id, CONCAT(FirstName, ' ', LastName) as 'Name', GPA, SAT from Student
	where GPA >= @GPAGTE  --where clause comes before order by clause
	order by LastName
END
go
EXEC GetAllStudents @GPAGTE=3.8;

-----------------------

alter procedure GetAllStudents
	@GPAGTE decimal (4,1) = 3.0, --GPA >=
	@SATGTE int = 400  --SAT>=
AS
BEGIN
	SELECT Id, CONCAT(FirstName, ' ', LastName) as 'Name', GPA, SAT from Student
	where GPA >= @GPAGTE and SAT>= @SATGTE  --where clause comes before order by clause
	order by LastName
END
go
EXEC GetAllStudents @SATGTE=1400;

-----------------------

alter procedure GetAllStudents
	@GPAGTE decimal (4,1) = 3.0, --GPA >=
	@SATGTE int = 400,  --SAT>=
	@LastName varchar(80) --so the user can enter a Last Name to search for a student
AS
BEGIN
	SELECT Id, CONCAT(FirstName, ' ', LastName) as 'Name', GPA, SAT from Student
	where GPA >= @GPAGTE and SAT>= @SATGTE and LastName = @LastName --where clause comes before order by clause
	order by LastName
END
go
EXEC GetAllStudents @GPAGTE=3.0, @SATGTE=1200, @LastName='Doud';