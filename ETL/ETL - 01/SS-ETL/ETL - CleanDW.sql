-- Set SEED

DBCC CHECKIDENT('Customer_Dim', RESEED, 0)
DBCC CHECKIDENT('Product_Dim', RESEED, 0)
DBCC CHECKIDENT('Date_Dim', RESEED, 0)
-- Threr are no auto number in Purchase_Fact so no need to RESEED
GO

-- Delete Them
DELETE FROM Purchase_Fact
DELETE FROM Customer_Dim
DELETE FROM Product_Dim
DELETE FROM Date_Dim
GO