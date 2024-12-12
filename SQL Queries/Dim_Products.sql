SELECT 
  ProductKey, 
  p.ProductAlternateKey as Product_Item_Code, 
  p.EnglishProductName AS Product_Name, 
  ps.EnglishProductSubcategoryName AS Sub_Category, 
  pc.EnglishProductCategoryName AS Product_Category, 
  p.Color AS Product_Color, 
  p.Size AS Product_Size, 
  p.ProductLine AS Product_Line, 
  p.ModelName AS Product_Model_Name, 
  p.EnglishDescription AS Product_Description, 
  ISNULL (p.Status, 'Outdated') AS [Product Status] 
FROM 
  DimProduct AS p 
  LEFT JOIN DimProductSubcategory AS ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey 
  LEFT JOIN DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY p.ProductKey ASC