-- Clean DIM_Products Table --
SELECT 
  prod.[ProductKey] AS [Product Key], 
  prod.[ProductAlternateKey] AS [Product Item Code], 
  --      ,[ProductSubcategoryKey], 
  --      ,[WeightUnitMeasureCode]
  --      ,[SizeUnitMeasureCode] 
  prod.[EnglishProductName] AS [Product Name], 
  prods.EnglishProductSubcategoryName AS [Sub Category], -- Joined in from Sub Category Table
  prodc.EnglishProductCategoryName AS [Product Category], -- Joined in from Category Table
  --      ,[SpanishProductName]
  --      ,[FrenchProductName]
  --      ,[StandardCost]
  --      ,[FinishedGoodsFlag] 
  prod.[Color] AS [Product Color], 
  --      ,[SafetyStockLevel]
  --      ,[ReorderPoint]
  --      ,[ListPrice] 
  prod.[Size] AS [Product Size], 
  --      ,[SizeRange]
  --      ,[Weight]
  --      ,[DaysToManufacture]
  prod.[ProductLine] AS [Product Line], 
  --     ,[DealerPrice]
  --      ,[Class]
  --      ,[Style] 
  prod.[ModelName] AS [Product Model Name], 
  --      ,[LargePhoto]
  prod.[EnglishDescription] AS [Product Description], 
  --      ,[FrenchDescription]
  --      ,[ChineseDescription]
  --      ,[ArabicDescription]
  --      ,[HebrewDescription]
  --      ,[ThaiDescription]
  --      ,[GermanDescription]
  --      ,[JapaneseDescription]
  --      ,[TurkishDescription]
  --      ,[StartDate], 
  --      ,[EndDate], 
  ISNULL (prod.Status, 'Outdated') AS [Product Status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as prod
  LEFT JOIN dbo.DimProductSubcategory AS prods ON prods.ProductSubcategoryKey = prod.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS prodc ON prods.ProductCategoryKey = prodc.ProductCategoryKey 
order by 
  prod.ProductKey asc
