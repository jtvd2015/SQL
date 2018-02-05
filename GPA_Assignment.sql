	DECLARE @GPA decimal(4,1) = 3.0;
	DECLARE @GPAU decimal(4,1);
	SET @GPAU = @GPA + 0.3;
	DECLARE @GPAL decimal(4,1);
	SET @GPAL = @GPA - 0.4;
	SELECT * from [Student]
		WHERE GPA >= @GPAL AND GPA <= @GPAU
--where GPA B/T @GPAU and @GPAL