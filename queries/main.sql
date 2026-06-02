WITH
  AdjustedReason AS (
  SELECT
    SalesOrderHeader.SalesOrderID AS id,
    CASE
      WHEN MAX (CASE
        WHEN SalesReason.Name='Price' THEN 1
        ELSE 0
    END
      )=1 THEN 'Price'
      WHEN MAX (CASE
        WHEN SalesReason.Name='Television  Advertisement' THEN 1
        ELSE 0
    END
      )=1 THEN 'Television  Advertisement'
      WHEN MAX (CASE
        WHEN SalesReason.Name='Quality' THEN 1
        ELSE 0
    END
      )=1 THEN 'Quality'
      ELSE MAX (SalesReason.Name)
  END
    AS reason
  FROM
    `tc-da-1.adwentureworks_db.salesorderheader` AS SalesOrderHeader
  LEFT JOIN
    `tc-da-1.adwentureworks_db.salesorderheadersalesreason` AS SalesOrderHeaderSalesReason
  ON
    SalesOrderHeader.SalesOrderID = SalesOrderHeaderSalesReason.SalesOrderID
  LEFT JOIN
    `tc-da-1.adwentureworks_db.salesreason` AS SalesReason
  ON
    SalesReason.SalesReasonID = SalesOrderHeaderSalesReason.SalesReasonID
  GROUP BY
    id )
SELECT
  SalesOrderHeader. SalesOrderID AS sales_order_id,
  DATE(DATE_TRUNC(SalesOrderHeader.OrderDate, month)) AS order_date,
  SalesTerritory.TerritoryID AS teritory,
  AdjustedReason.reason AS reason,
  SalesTerritory.CountryRegionCode AS teritoty_region_code,
  ROUND(SUM(SalesOrderHeader.TotalDue),2) AS total_due
FROM
  `tc-da-1.adwentureworks_db.salesorderheader` AS SalesOrderHeader
LEFT JOIN
  `tc-da-1.adwentureworks_db.salesorderheadersalesreason` AS SalesOrderHeaderSalesReason
ON
  SalesOrderHeader.SalesOrderID=SalesOrderHeaderSalesReason.SalesOrderID
JOIN
  `tc-da-1.adwentureworks_db.salesterritory` AS SalesTerritory
ON
  SalesTerritory.TerritoryID=SalesOrderHeader.TerritoryID
JOIN
  AdjustedReason
ON
  SalesOrderHeader.SalesOrderID=AdjustedReason.id
GROUP BY
  sales_order_id,
  teritoty_region_code,
  teritory,
  reason,
  order_date
