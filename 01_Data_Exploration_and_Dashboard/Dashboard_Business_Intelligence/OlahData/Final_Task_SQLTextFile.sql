USE RAKAMIN;

SELECT 
    o.date AS order_date, 
    pc.categoryname as category_name, 
    p.prodname AS product_name, 
    p.price AS product_price, 
    o.quantity AS order_qty, 
    o.quantity * p.price AS total_sales, 
    c.customeremail AS cust_email, 
    c.customercity AS cust_city
FROM orders o
JOIN products p 
    ON o.prodnumber = p.prodnumber
JOIN customers c 
    ON o.customerid = c.customerid
JOIN productcategory pc 
    ON p.category = pc.categoryid
ORDER BY STR_TO_DATE(o.date, '%m/%d/%Y') ASC;






