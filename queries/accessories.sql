SELECT
  SalesOrderDetail.SalesOrderID AS sales_order_ID,
  SpecialOffer.Category AS special_order_category,
  ProductCatego.Name AS product_category_name,
  ProductSubcategory.Name AS product_subcategory_name,
  Product.Name AS product_name,
  Product.Color AS product_color,
  SalesOrderDetail.SalesOrderDetailID AS sales_orede_detail,
  SpecialOffer.Description AS special_order_description,
  SpecialOffer.Type AS special_order_type,
  ROUND(SUM(SalesOrderDetail.OrderQty),2) AS order_qty,
  ROUND(AVG(SalesOrderDetail.UnitPrice),2) AS avg_unit_price,
  ROUND(AVG(SalesOrderDetail.UnitPriceDiscount),2) AS avg_unit_price_discount,
  ROUND(SUM(SalesOrderDetail.LineTotal),2) AS line_total
FROM
  `tc-da-1.adwentureworks_db.salesorderdetail` AS SalesOrderDetail
JOIN
  `tc-da-1.adwentureworks_db.specialofferproduct` AS SpecialOfferProduct
ON
  SalesOrderDetail.ProductID=SpecialOfferProduct.ProductID
  AND SalesOrderDetail.SpecialOfferID=SpecialOfferProduct.SpecialOfferID
JOIN
  `tc-da-1.adwentureworks_db.product` AS Product
ON
  SpecialOfferProduct.ProductID=Product.ProductID
JOIN
  `tc-da-1.adwentureworks_db.productsubcategory` AS ProductSubcategory
ON
  ProductSubcategory.ProductSubcategoryID= Product.ProductSubcategoryID
JOIN
  `tc-da-1.adwentureworks_db.productcategory` AS ProductCatego
ON
  ProductSubcategory.ProductCategoryID=ProductCatego.ProductCategoryID
JOIN
  `tc-da-1.adwentureworks_db.salesorderheader` AS SalesOrderHeader
ON
  SalesOrderHeader.SalesOrderID=SalesOrderDetail.SalesOrderID
JOIN `tc-da-1.adwentureworks_db.specialoffer` AS SpecialOffer
ON SpecialOfferProduct.SpecialOfferID=SpecialOffer.SpecialOfferID
 
WHERE
  SalesOrderHeader.OrderDate BETWEEN '2001-08-01' AND '2004-06-30'
  AND ProductCatego.Name='Accessories'
GROUP BY
  sales_order_ID,
  sales_orede_detail,
  special_order_description,
  product_name,
  product_color,
  special_order_type,
  special_order_category,
  product_subcategory_name,
  product_category_name,
  SalesOrderHeader.OrderDate
