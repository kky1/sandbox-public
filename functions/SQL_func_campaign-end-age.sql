-- Transact-SQL Scalar Function for Calculating Age at End of Campaign
CREATE FUNCTION calcage(
    @BIRTH_DAY VARCHAR(2),
    @BIRTH_MONTH VARCHAR(2),
    @BIRTH_YEAR VARCHAR(4)
)
RETURNS INT
AS
BEGIN   
   declare @date DATE
   declare @campaignage INT 
  
   set @date = CONVERT(date,((@BIRTH_MONTH)+'/'+(@BIRTH_DAY)+'/'+(@BIRTH_YEAR)),101) 
   set @campaignage = DATEDIFF(year,@date,'2021-06-30')
  
    RETURN @campaignage
  
END;