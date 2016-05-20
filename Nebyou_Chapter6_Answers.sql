		/* Nebyou Wondimu
			Assignment Chapter 6 */

/* Question 1 */

USE my_guitar_shop;
SELECT 
    COUNT(order_id) AS NumberOfOrders,
    SUM(tax_amount) AS SumOfTaxAmount
FROM
    orders;
   
/* Question 2 */

SELECT 
    c.category_name,
    COUNT(p.product_name) AS ProductCount,
    MAX(p.list_price) AS MostExpensiveProduct
FROM
    categories c
        INNER JOIN
    products p ON c.category_id = p.category_id
GROUP BY c.category_name
ORDER BY COUNT(*) DESC; 
  
/* Question 3 */

SELECT 
    c.email_address,
    (SUM(oi.item_price) * oi.quantity) AS SumOfItemPrice,
    (SUM(oi.discount_amount) * oi.quantity) AS SumOfDiscountAmount
FROM
    customers c
        JOIN
    order_items oi
        JOIN
    orders o ON o.customer_id = c.customer_id
        AND oi.order_id = o.order_id
GROUP BY oi.item_price , c.email_address
ORDER BY oi.item_price DESC;

/* Question 4 */

SELECT 
    c.email_address,
    COUNT(oi.order_id) AS ItemAmount,
    ((oi.item_price - oi.discount_amount) * oi.quantity) AS TotalAmount
FROM
    customers c
        JOIN
    orders o
        JOIN
    order_items oi ON c.customer_id = o.customer_id
        AND o.order_id = oi.order_id
GROUP BY c.email_address
HAVING ItemAmount > 1
ORDER BY c.email_address DESC;
   

/* Question 5 */
SELECT 
    c.email_address,
    COUNT(oi.order_id) AS ItemAmount,
    ((oi.item_price - oi.discount_amount) * oi.quantity) AS TotalAmount
FROM
    customers c
        JOIN
    orders o
        JOIN
    order_items oi ON c.customer_id = o.customer_id
        AND o.order_id = oi.order_id
GROUP BY c.email_address
HAVING TotalAmount > 400
ORDER BY c.email_address DESC;

/* Question 6 */

SELECT 
    p.product_name,
    ((oi.item_price - oi.discount_amount) * oi.quantity) AS TotalAmount
FROM
    products p
        JOIN
    order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name with rollup;

/* Question 7 */
SELECT DISTINCT
    c.email_address, COUNT(p.product_name) AS CustomeOrderCount
FROM
    customers c
        JOIN
    orders o
        JOIN
    order_items oi
        JOIN
    products p ON c.customer_id = o.customer_id
        AND o.order_id = oi.order_id
        AND p.product_id = oi.product_id
GROUP BY c.email_address
HAVING CustomeOrderCount > 1; 



 
 


