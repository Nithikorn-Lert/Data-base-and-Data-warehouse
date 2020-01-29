-- E: Extact (SELECT)
-- T: Transform (ADJUST)
USE AllElectronics; 

SELECT DISTINCT Date, 
	DATEPART(DD, Date) as Day,
	DATENAME(MONTH, Date) as Month,
	DATEPART(YYYY, Date) as Year
FROM     Purchases
ORDER BY Date