
/* Nebyou Wondimu */

use my_guitar_shop;

/* Question # 1 */

SELECT 
    category_name, product_name, list_price
FROM
    Categories c
        JOIN
    Products p ON c.category_id = p.Category_id
ORDER BY category_name , product_name ASC;

/* Question # 2 */

SELECT 
    c.first_name,
    c.last_name,
    a.line1,
    a.city,
    a.state,
    a.zip_code
FROM
    customers c
        INNER JOIN
    addresses a ON c.customer_id = a.customer_id
WHERE
    c.email_address = 'allan.sherwood@yahoo.com';
    
 /* Question # 3 */
 
SELECT 
    c.first_name,
    c.last_name,
    a.line1,
    a.city,
    a.state,
    a.zip_code
FROM
    customers c
        INNER JOIN
    addresses a ON c.customer_id = a.customer_id
        AND a.address_id = c.shipping_address_id;
	
 /* Question # 4 */
 
SELECT 
    last_name,
    first_name,
    order_date,
    product_name,
    item_price,
    discount_amount,
    quantity
FROM
    customers c
        INNER JOIN
    orders o ON c.customer_id = o.customer_id
        INNER JOIN
    order_items oi ON oi.order_id = o.order_id
        INNER JOIN
    products p ON p.product_id = oi.product_id
ORDER BY c.last_name , o.order_date , p.product_name;
  
 /* Question # 5 */
   
SELECT 
    p.product_name, p.list_price
FROM
    products p
        JOIN
    products p2 ON p.product_name <> p2.product_name
        AND p.list_price = p2.list_price
ORDER BY p.product_name;
 
 /* Question # 6 */
 
SELECT 
    c.category_name, p.product_id
FROM
    categories c
        LEFT OUTER JOIN
    products p ON c.category_id = p.category_id
WHERE
    ISNULL(p.product_id);
    
 /* Question # 7 */
 
SELECT 
    IF(orders.ship_date IS NULL,
        'Not Shipped',
        'Shipped') AS ship_status,
    order_id,
    order_date
FROM
    orders
ORDER BY order_date;

