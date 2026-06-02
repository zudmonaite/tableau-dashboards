SELECT 
SalesOrderHeader.SalesOrderID AS sales_order_id,
CONCAT(contact.FirstName, ' ', contact.LastName) AS full_name
FROM `tc-da-1.adwentureworks_db.salesorderheader` AS SalesOrderHeader
LEFT JOIN `tc-da-1.adwentureworks_db.salesperson` AS SalesPerson
ON SalesPerson.SalesPersonID=SalesOrderHeader.SalesPersonID
LEFT JOIN `tc-da-1.adwentureworks_db.employee` AS Employee
ON Employee.EmployeeID=SalesOrderHeader.SalesPersonID
LEFT JOIN `tc-da-1.adwentureworks_db.contact` AS Contact
ON Contact.ContactID=Employee.ContactID

GROUP BY 
sales_order_id,
full_name
