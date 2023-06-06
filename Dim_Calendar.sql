                       /****** Cleaned Dim_Date Table  ******/
SELECT 
       [DateKey]
      ,[FullDateAlternateKey] As Date
--    ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] As Day
--    ,[SpanishDayNameOfWeek]
--    ,[FrenchDayNameOfWeek]
--    ,[DayNumberOfMonth]
--    ,[DayNumberOfYear]
      ,[WeekNumberOfYear] As WeekNo
      ,[EnglishMonthName] As Month
	  ,LEFT([EnglishMonthName],3) As MonthShort
--    ,[SpanishMonthName]
--    ,[FrenchMonthName]
      ,[MonthNumberOfYear] As MonthNo
      ,[CalendarQuarter] As Quarter 
      ,[CalendarYear] As year
--    ,[CalendarSemester]
--    ,[FiscalQuarter]
--    ,[FiscalYear]
--    ,[FiscalSemester]
FROM
       [AdventureWorksDW2019].[dbo].[DimDate]
WHERE
	   [CalendarYear] >= 2020;