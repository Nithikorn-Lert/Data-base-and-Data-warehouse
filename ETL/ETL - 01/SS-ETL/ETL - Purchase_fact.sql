SELECT Purchases.CustID, Purchases.Date, Item_sold.ItemID, Item_sold.Qty AS Unit_sold, Items.Price * Item_sold.Qty AS Total, AllElec_star.dbo.Customer_Dim.CustomerKey, AllElec_star.dbo.Product_Dim.ProductKey, 
                  AllElec_star.dbo.Date_Dim.DateKey
FROM     Item_sold INNER JOIN
                  Items ON Item_sold.ItemID = Items.ItemID INNER JOIN
                  Purchases ON Item_sold.TransID = Purchases.TransID INNER JOIN
                  AllElec_star.dbo.Customer_Dim ON Purchases.CustID = AllElec_star.dbo.Customer_Dim.CustomerKey INNER JOIN
                  AllElec_star.dbo.Product_Dim ON Item_sold.ItemID = AllElec_star.dbo.Product_Dim.ProductID INNER JOIN
                  AllElec_star.dbo.Date_Dim ON Purchases.Date = AllElec_star.dbo.Date_Dim.TheDate

