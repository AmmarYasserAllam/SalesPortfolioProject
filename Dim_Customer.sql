                     /****** Cleaned Dim_Customer Table  ******/
SELECT 
        C.[CustomerKey] As CustomerKey
--       ,[GeographyKey]
--       ,[CustomerAlternateKey]
--       ,[Title]
         ,C.[FirstName] As [First Name]
--       ,[MiddleName] 
         ,[LastName] As [Last Name] 
       ,C.[FirstName] + ' ' + [LastName] As [Full Name], 
--       ,[NameStyle]
FORMAT   ([BirthDate],'yyyy') As [Birth Year],
Case    C.[MaritalStatus] When 'M' Then 'Married' When 'S' Then 'Single' END As MartialStatus,
--       ,[Suffix]
Case    C.[Gender] When 'M' Then 'Male' When 'F' Then 'Female' END As Gender       
--       ,[EmailAddress]
         ,[YearlyIncome] As [Income]
--       ,[TotalChildren]
         ,[NumberChildrenAtHome] As [KidHome]
         ,[EnglishEducation] As [Education]
--       ,[SpanishEducation]
--       ,[FrenchEducation]
--       ,[EnglishOccupation]
--       ,[SpanishOccupation]
--       ,[FrenchOccupation]
--       ,[HouseOwnerFlag]
         ,[NumberCarsOwned] As [Owned Car]
--       ,[AddressLine1]
--       ,[AddressLine2]
--       ,[Phone] 
       ,C.[DateFirstPurchase] As [Customer Join Date]
--       ,[CommuteDistance] 
       ,G.[City] As [Customer City] --Joined in Customer City from Geography Table
FROM 
            [DimCustomer] As C 
  left Join [DimGeography] As G 
  ON      C.[GeographyKey] = G.[GeographyKey] 
ORDER BY 
          C.[CustomerKey]        --Order List By CustomerKey
