-- Transact-SQL Scalar Function for Calculating Age
CREATE FUNCTION calcage(
    @BIRTH_DAY VARCHAR(2),
    @BIRTH_MONTH VARCHAR(2),
    @BIRTH_YEAR VARCHAR(4)
)
RETURNS INT
AS
BEGIN   
   declare @date DATE
   declare @age INT 
  
   set @date = CONVERT(date,((@BIRTH_MONTH)+'/'+(@BIRTH_DAY)+'/'+(@BIRTH_YEAR)),101) 
   set @age = DATEDIFF(year,@date,GETDATE())
  
    RETURN @age
  
END;