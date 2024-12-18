-- 1. Select all category names with their descriptiOns From the Categories table

Select

	[dbo].[Categories].[CategoryName],
	[dbo].[Categories].[DescriptiOn]

	From
		[dbo].[Categories]

-- 2. Select the cOntact name, customer id, and company name of all Customers in LOndOn

Select

	[dbo].[Customers].[COntactName],
	[dbo].[Customers].[CustomerID],
	[dbo].[Customers].[CompanyName]
	
	From
		[dbo].[Customers]

	Where
		[dbo].[Customers].[City] = 'LOndOn'

-- 3. Marketing managers and sales representatives have Asked you to Select all available columns in the Suppliers tables that have a FAX number

Select
	
	[dbo].[Suppliers].[SupplierID],
	[dbo].[Suppliers].[CompanyName],
	[dbo].[Suppliers].[COntactName],
	[dbo].[Suppliers].[COntactTitle],
	[dbo].[Suppliers].[Address],
	[dbo].[Suppliers].[City],
	[dbo].[Suppliers].[Country],
	[dbo].[Suppliers].[Fax],
	[dbo].[Suppliers].[HomePage],
	[dbo].[Suppliers].[PhOne],
	[dbo].[Suppliers].[PostalCode],
	[dbo].[Suppliers].[RegiOn]
	
	From
		[dbo].[Suppliers]

	Where
		[dbo].[Suppliers].[Fax] Is Not Null

-- 4. Select a list of customers id’s From the Orders table with required dates between Jan 1, 1997 and Jan 1, 1998 and with freight under 100 units

Select

	[dbo].[Orders].[CustomerID]
	
	From
		[dbo].[Orders]

	Where
		[dbo].[Orders].[RequiredDate] Between '1997-1-1' And '1998-1-1'
		And
		[dbo].[Orders].[Freight] < 100

-- 5. Select a list of company names and cOntact names of all the Owners From the Customer table From Mexico, Sweden and Germany

Select

	[dbo].[Customers].[CompanyName],
	[dbo].[Customers].[COntactName]

	From
		[dbo].[Customers]

	Where
		[dbo].[Customers].[Country] In ('Mexico','Sweden','Germany')

-- 6. Count the number of discOntinued products in the Products table

Select

	Count([dbo].[Products].[ProductID])
	
	From 
		[dbo].[Products]

	Where
		[dbo].[Products].[DiscOntinued] = 'True'

-- 7. Select a list of category names and descriptiOns of all categories beginning with 'Co' From the Categories table

Select

	[dbo].[Categories].[CategoryName],
	[dbo].[Categories].[DescriptiOn]

	From
		[dbo].[Categories]

	Where
		[dbo].[Categories].[CategoryName] Like 'Co%'

-- 8. Select all the company names, city, country and postal code From the Suppliers table with the word 'rue' in their address. The list should be ordered alphabetically by company name

Select

	[dbo].[Suppliers].[CompanyName],
	[dbo].[Suppliers].[City],
	[dbo].[Suppliers].[Country],
	[dbo].[Suppliers].[PostalCode]

	From
		[dbo].[Suppliers]

	Where
		[dbo].[Suppliers].[Address] Like '%rue%'

	Order By
		[dbo].[Suppliers].[CompanyName]

-- 9. Select the product id and the total quantities ordered for each product id in the Order Details table

Select

	[dbo].[Order Details].[ProductID],
	Sum([dbo].[Order Details].[Quantity]) As 'Total Quantities'

	From
		[dbo].[Order Details]

	Group By
		[dbo].[Order Details].[ProductID]

-- 10. Select the customer name and customer address of all customers with orders that shipped using Speedy Express

Select
	
	[dbo].[Customers].[COntactName],
	[dbo].[Customers].[Address]

	From
		[dbo].[Customers]

	Inner Join Orders On
		[dbo].[Orders].[CustomerID] = [dbo].[Customers].[CustomerID]

	Inner Join Shippers On
		[dbo].[Orders].[ShipVia] = [dbo].[Shippers].[ShipperID]

	Where
		[dbo].[Shippers].[CompanyName] = 'Speedy Express'

-- 11. Select a list of Suppliers cOntaining company name, cOntact name, cOntact title and regiOn descriptiOn

Select
	
	[dbo].[Suppliers].[CompanyName],
	[dbo].[Suppliers].[COntactName],
	[dbo].[Suppliers].[COntactTitle],
	[dbo].[RegiOn].[RegiOnDescriptiOn]

	From
		[dbo].[Suppliers]

	Inner Join [dbo].[Products] On
		[dbo].[Products].[SupplierID] = [dbo].[Suppliers].[SupplierID]

	Inner Join [dbo].[Order Details] On
		[dbo].[Order Details].[ProductID] = [dbo].[Products].[ProductID]

	Inner Join [dbo].[Orders] On
		[dbo].[Orders].[OrderID] = [dbo].[Order Details].[OrderID]

	Inner Join [dbo].[Employees] On
		[dbo].[Orders].[EmployeeID] = [dbo].[Employees].[EmployeeID]

	Inner Join [dbo].[EmployeeTerritories] On
		[dbo].[Employees].[EmployeeID] = [dbo].[EmployeeTerritories].[EmployeeID]

	Inner Join [dbo].[Territories] On
		[dbo].[EmployeeTerritories].[TerritoryID] = [dbo].[Territories].[TerritoryID]

	Inner Join [dbo].[RegiOn] On
		[dbo].[Territories].[RegiOnID] = [dbo].[RegiOn].[RegiOnID]

-- 12. Select all product names From the Products table that are condiments

Select

	[dbo].[Products].[ProductName]

	From
		[dbo].[Products]

	Inner Join [dbo].[Categories] On
		[dbo].[Products].[CategoryID] = [dbo].[Categories].[CategoryID]

	Where
		[dbo].[Categories].[CategoryName] = 'condiments'

-- 13. Select a list of customer names who have no orders in the Orders table

Select

	[dbo].[Customers].[ContactName]

	From
		[dbo].[Customers]

	Full Outer Join [dbo].[Orders] On
		[dbo].[Orders].[CustomerID] = [dbo].[Customers].[CustomerID]

	Where
		[dbo].[Orders].[OrderID] Is Null

-- 14. Add a shipper named 'Amazon' to the Shippers table using SQL

Insert Into [dbo].[Shippers] Values('Amazon','(503) 555-9988')

-- 15. Change the company name From 'Amazon' to 'Amazon Prime Shipping' in the Shippers table using SQL

Update [dbo].[Shippers]
	
	Set 
		[dbo].[shippers].[CompanyName] = 'Amazon Prime Shipping'

	Where
		[dbo].[Shippers].[CompanyName] = 'Amazon'

-- 16. Select a complete list of company names From the Shippers table. Include freight totals rounded to the nearest whole number for each shipper From the Orders table for those shippers with orders

Select

Distinct

	[dbo].[Shippers].[CompanyName],
	Floor(Sum([dbo].[Orders].[Freight]))

	From [dbo].[Shippers]

	Join [dbo].[Orders]
	On [dbo].[Orders].[ShipVia] = [dbo].[Shippers].[ShipperID] 
	Group By [dbo].[Shippers].[CompanyName]

-- 17. Select all employee first and lAst names From the Employees table by combining the 2 columns aliAsed As 'DisplayName'. The combined format should be 'LAstName, FirstName'

Select 

    [dbo].[Employees].[LAstName] + ', ' + [dbo].[Employees].[FirstName] As [DisplayName]

From 
    [dbo].[Employees];

-- 18. Add yourself to the Customers table with an order for 'Grandma's Boysenberry Spread'

Insert Into [dbo].[Customers]

	([CustomerID],
	[CompanyName],
	[ContactName],
	[ContactTitle],
	[Address],
	[City],
	[Region],
	[PostalCode],
	[Country],
	[Phone],
	[Fax])

	Values 
	('1010',
	'333',
	'222',
	'111',
	'000',
	'789',
	'456',
	'123',
	'444',
	'555',
	'666');

Select

	[dbo].[Products].[ProductID] 

	From 
		[dbo].[Products] 

	Where
		[dbo].[Products].[ProductName] = 'Grandma''s Boysenberry Spread';

Insert Into [dbo].[Orders]

	([CustomerID],
	[EmployeeID],
	[OrderDate],
	[RequiredDate],
	[ShippedDate],
	[ShipVia],
	[Freight],
	[ShipName],
	[ShipAddress],
	[ShipCity],
	[ShipRegion],
	[ShipPostalCode],
	[ShipCountry])

	Values
	('1010',
	1,
	GETDATE(),
	DATEADD(day, 7, GETDATE()),
	GETDATE(),
	1,
	0,
	'123',
	'456',
	'789',
	'321',
	'654',
	'987');

Insert Into [dbo].[Order Details]

	([OrderID],
	[ProductID],
	[UnitPrice],
	[Quantity],
	[Discount])

	Values
	(SCOPE_IDENTITY(),
	1,
	(
	
	Select
	
		[dbo].[Products].[UnitPrice]

		From
			[dbo].[Products]
		
		Where
			[dbo].[Products].[ProductID] = 1
	
	),
	1,
	0);

-- 19. Remove yourself and your order From the databAse

Select

	[dbo].[Orders].[OrderID] 

	From
		[dbo].[Orders] 

	Where
		[dbo].[Orders].[CustomerID] = '1010';

Delete From [dbo].[Order Details]

	Where
		[dbo].[Order Details].[OrderID] = 
		(
		
		Select
		
			[dbo].[Orders].[OrderID]
			
			From
				[dbo].[Orders]
			
			Where
			[dbo].[Orders].[CustomerID] = '1010'
		
		);

Delete From [dbo].[Orders]

	Where
		[dbo].[Orders].[CustomerID] = '1010';

Delete From [dbo].[Customers]

	Where
		[dbo].[Customers].[CustomerID] = '1010';

-- 20. Select a list of products From the Products table along with the total units in stock for each product. Give the computed column a name using the aliAs, 'TotalUnits'. Include only products with TotalUnits greater than 100

Select

    [dbo].[Products].[ProductName],
    [dbo].[Products].[UnitsInStock] + [dbo].[Products].[UnitsOnOrder] As [TotalUnits]
	
	From 
		[dbo].[Products]
	
	Where 
		[dbo].[Products].[UnitsInStock] + [dbo].[Products].[UnitsOnOrder] > 100;
