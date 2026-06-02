SELECT
  productsubcategory.name AS subcategory_name,
  ProductCategory.name AS category_name,
  ROUND(SUM(product_inventory.Quantity),2) AS total_stock,
  ROUND(AVG(product.ListPrice)) AS avg_price,
  ROUND(SUM(product_inventory.Quantity),2) * ROUND(AVG(product.ListPrice)) AS expected_line_total
FROM
  `tc-da-1.adwentureworks_db.productinventory` AS product_inventory
JOIN
  `tc-da-1.adwentureworks_db.product` AS product
ON
  product_inventory.ProductID=product.ProductID
JOIN
  `tc-da-1.adwentureworks_db.productsubcategory` AS productsubcategory
ON
  productsubcategory.ProductSubcategoryID=product.ProductSubcategoryID
JOIN
  `tc-da-1.adwentureworks_db.productcategory` AS ProductCategory
ON
  ProductCategory.ProductCategoryID=productsubcategory.ProductCategoryID
GROUP BY
  subcategory_name,
  category_name
