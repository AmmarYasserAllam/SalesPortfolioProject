                    /****** Cleaned Dim_Product Table  ******/
SELECT
   P.[ProductKey],
   P.[ProductAlternateKey]           As productItemCode,
--,  [ProductSubcategoryKey]
--,  [WeightUnitMeasureCode]
--,  [SizeUnitMeasureCode]
   P.[EnglishProductName]            As [Product Name],
--   Joined in from Category Table.
  PC.[EnglishProductCategoryName]    As[Product Category Name],
--   Joined in from SubCategory Table.
  PS.[EnglishProductSubcategoryName] As[Product SubCategory Name], 
--,  [SpanishProductName]
--,  [FrenchProductName]
--,  [StandardCost]
--,  [FinishedGoodsFlag]
   P.[Color]                         As [Product Color],
--,  [SafetyStockLevel]
--,  [ReorderPoint]
--,  [ListPrice]
   P.[Size]                          As [Product Size],
--,  [SizeRange]
--,  [Weight]
--,  [DaysToManufacture]
   P.[ProductLine]                   As [Product Line],
--,  [DealerPrice]
--,  [Class]
--,  [Style]
   P.[ModelName]                     As [Product Model Name],
--  ,[LargePhoto]
   P.[EnglishDescription]             As[Prodct Description],
--,  [FrenchDescription]
--,  [ChineseDescription]
--,  [ArabicDescription]
--,  [HebrewDescription]
--,  [ThaiDescription]
--,  [GermanDescription]
--,  [JapaneseDescription]
--,  [TurkishDescription]
--,  [StartDate]
--,  [EndDate]
     isnull(P.[Status],'Outdated')   As [Product Status] 
  FROM 
             [DimProduct] As P
  Left Join  [DimProductSubcategory] As PS 
       ON PS.[ProductSubcategoryKey] = P.[ProductSubcategoryKey] 

  Left Join  [DimProductCategory] As PC
       ON PS.ProductCategoryKey = PC.ProductCategoryKey;

