                  /****** Cleaned Fact_InternetSales Table  ******/
SELECT
       [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
--    ,[PromotionKey]
--    ,[CurrencyKey]
--    ,[SalesTerritoryKey]
      ,[SalesOrderNumber]  As [OrderID],
--    ,[SalesOrderLineNumber]
--    ,[RevisionNumber]
--    ,[OrderQuantity]
--    ,[UnitPrice]
--    ,[ExtendedAmount],
--    ,[UnitPriceDiscountPct]
--    ,[DiscountAmount]
--    ,[ProductStandardCost]
       [TotalProductCost]  As [Product Cost],
       [SalesAmount]  As [Sales Amount],
       [TaxAmt]  As [Tax Amount],
--    ,[Freight]
--    ,[CarrierTrackingNumber]
--    ,[CustomerPONumber]
FORMAT([OrderDate],'dd-MM-yyyy') As [OrderDate],
--    ,[DueDate]
FORMAT([ShipDate],'dd-MM-yyyy') As [ShipDate]
  FROM
       [dbo].[FactInternetSales]
  WHERE --Ensures we always only bring two of date from extraction.
       Left( [OrderDateKey], 4 ) >= YEAR(GETDATE()) -2 
  ORDER BY
             [OrderDateKey] ASC 