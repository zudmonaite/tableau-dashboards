SELECT 
SalesOrderHeader.SalesOrderID AS sales_order_id,
Address.City AS city,
stateprovince.StateProvinceCode AS province_code,
stateprovince.CountryRegionCode AS CountryRegionCode,
stateprovince.Name as province_name

FROM `tc-da-1.adwentureworks_db.salesorderheader` AS SalesOrderHeader
LEFT JOIN `tc-da-1.adwentureworks_db.address` AS Address
ON Address.Addressid=SalesOrderHeader.BillToAddressID
JOIN `tc-da-1.adwentureworks_db.stateprovince` AS stateprovince
ON stateprovince.StateProvinceID=Address.StateProvinceID
GROUP BY 
sales_order_id,
city,
province_code,
CountryRegionCode,
province_name
