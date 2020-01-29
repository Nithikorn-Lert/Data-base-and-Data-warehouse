SELECT Items.ItemID, Items.SupplierID, Items.place_made, Items.Type, Items.Price, Items.Brand, Items.Category, Suppliers.CompanyName, Items.Name
FROM     Items INNER JOIN
                  Suppliers ON Items.SupplierID = Suppliers.SupplierID