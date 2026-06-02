SELECT 
DATE(DATE_TRUNC(PurchaseOrderHeader.OrderDate, month)) AS order_date,
PurchaseOrderHeader.PurchaseOrderID AS purchase_order_id,
ROUND(SUM(PurchaseOrderHeader.TotalDue)) AS purchase_total_due, 
ROUND(SUM(PurchaseOrderHeader.Freight)) AS purchase_freight,
ROUND(SUM(PurchaseOrderHeader.TaxAmt)) AS purchase_taxamount

FROM `tc-da-1.adwentureworks_db.purchaseorderheader` AS PurchaseOrderHeader
WHERE DATE(DATE_TRUNC(PurchaseOrderHeader.OrderDate, month)) BETWEEN '2001-01-01' AND '2004-06-30'

GROUP BY 
order_date,
purchase_order_id
