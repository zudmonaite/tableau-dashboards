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
  SalesOrderHeader.ShipMethodID AS ShipMethodID,
  SalesTerritory.TerritoryID AS teritory,
  SUM(SalesOrderHeader.Freight) AS Freight,
  AdjustedReason.reason AS reason,
  ShipMethod.Name AS shipping_method,
  ShipMethod.ShipRate AS ShipRate,
  ShipMethod.ShipBase AS ShipBase,
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
JOIN `tc-da-1.adwentureworks_db.shipmethod` AS ShipMethod
ON ShipMethod.ShipMethodID=SalesOrderHeader.ShipMethodID

GROUP BY
  sales_order_id,
  ShipMethodID,
  ShipBase,
  shipping_method,
  teritoty_region_code,
  teritory,
  ShipRate,
  reason,
  order_date
