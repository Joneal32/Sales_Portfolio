-- Clean DIM_Customers Table --
SELECT 
  cust.customerkey AS Customer_Key, 
  --      ,[GeographyKey]
  --      ,[CustomerAlternateKey]
  --      ,[Title]
  cust.firstname AS [First Name], 
  --      ,[MiddleName]
  cust.lastname AS [Last Name], 
  -- Combine First and Last Name
  cust.firstname + ' ' + lastname AS [Full Name], 
  --      ,[NameStyle]
  --      ,[BirthDate]
  --      ,[MaritalStatus]
  --      ,[Suffix]
  CASE cust.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --      ,[EmailAddress]
  --      ,[YearlyIncome]
  --      ,[TotalChildren]
  --      ,[NumberChildrenAtHome]
  --      ,[EnglishEducation]
  --      ,[SpanishEducation]
  --      ,[FrenchEducation]
  --      ,[EnglishOccupation]
  --      ,[SpanishOccupation]
  --      ,[FrenchOccupation]
  --      ,[HouseOwnerFlag]
  --      ,[NumberCarsOwned]
  --      ,[AddressLine1]
  --      ,[AddressLine2]
  --      ,[Phone]
  cust.datefirstpurchase AS Date_First_Purchase, 
  --      ,[CommuteDistance]
  geo.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as cust 
  LEFT JOIN dbo.dimgeography AS geo ON geo.geographykey = cust.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey

