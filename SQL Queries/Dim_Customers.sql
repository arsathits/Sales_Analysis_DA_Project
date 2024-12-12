-- Cleansed Dim_customers Table --
SELECT c.CustomerKey AS CustomerKey,
c.FirstName as First_Name,
c.LastName AS Last_Name,
c.FirstName + ' ' + c.LastName AS Full_Name,
CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
C.DateFirstPurchase AS DateFirstPurchase,
g.city AS Customer_city
  FROM DimCustomer c
  JOIN DimGeography g
  ON c.GeographyKey = g.GeographyKey
ORDER BY CustomerKey ASC
