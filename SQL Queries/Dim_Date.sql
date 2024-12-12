-- Cleaned Dim_Date Table --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  --[DayNumberOfWeek]
  [EnglishDayNameOfWeek] AS Day, 
  --[SpanishDayNameOfWeek]
  --[FrenchDayNameOfWeek]
  --[DayNumberOfMonth]
  --[DayNumberOfYear]
  --[WeekNumberOfYear] 
  [EnglishMonthName] AS Month, 
  LEFT([EnglishMonthName], 3) AS Monthshort, 
  --[SpanishMonthName]
  --[FrenchMonthName]
  [MonthNumberOfYear] AS MonthNO, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS YEAR --[CalendarSemester]
  --[FiscalQuarter]
  --[FiscalYear]
  --[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2022
