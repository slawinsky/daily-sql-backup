DECLARE @SQLStatement VARCHAR(2000) 
SET @SQLStatement = 'path' + CONVERT(nvarchar(30), GETDATE(), 110) +'.bak' 
BACKUP DATABASE [database] TO  DISK = @SQLStatement
