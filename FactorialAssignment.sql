CREATE PROCEDURE Factorial
	@fact int = NULL
AS
BEGIN
	IF @fact = NULL 
	BEGIN
		PRINT 'No Data Entered.';
		RETURN
	END
	DECLARE @nbr int = @fact;
	DECLARE @factorial int = 1;
		WHILE @nbr > 0
		BEGIN
			SET @factorial = @factorial * @nbr;
			SET @nbr = @nbr - 1;
		END
		PRINT CONCAT('The factorial of ', @fact, ' is ', @factorial);
END
GO
EXEC Factorial @fact=5;

-----------------------

ALTER PROCEDURE Factorial
	@fact int = NULL
AS
BEGIN
	IF @fact = NULL 
	BEGIN
		PRINT 'No Data Entered.';
		RETURN
	END
	DECLARE @nbr int = @fact;
	DECLARE @factorial int = 1;
		WHILE @nbr > 0
		BEGIN
			SET @factorial = @factorial * @nbr;
			SET @nbr = @nbr - 1;
		END
		PRINT CONCAT('The factorial of ', @fact, ' is ', @factorial);
END
GO
EXEC Factorial @fact=5;