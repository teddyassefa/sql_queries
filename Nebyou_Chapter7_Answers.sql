
/* Nebyou Wondimu
			Assignment Chapter 7 */

SELECT DISTINCT
    category_name
FROM
    categories
WHERE
    category_id IN (SELECT 
            category_id
        FROM
            products);


/* Question 2 */
SELECT 
    product_name, list_price
FROM
    products
WHERE
    list_price > (SELECT 
            AVG(list_price)
        FROM
            products)
ORDER BY list_price ASC;

/* Question 3 */

SELECT 
    category_name
FROM
    categories
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            products
        WHERE
            category_id = categories.category_id);

/* Question 4 */
/* SELECT 
        c.email_address,
            oi.order_id,
            SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS order_total
    FROM
        customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_items oi ON oi.order_id = o.order_id
    GROUP BY c.email_address , o.order_id */
    
SELECT 
    b.email_address,
    b.order_id,
    MAX(order_total) AS max_order_total
FROM
    (SELECT 
        c.email_address,
            oi.order_id,
            SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS order_total
    FROM
        customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_items oi ON oi.order_id = o.order_id
    GROUP BY c.email_address , o.order_id) AS b
GROUP BY email_address;

/* Question 5 */

SELECT 
    product_name, discount_percent
FROM
    products
GROUP BY discount_percent
HAVING COUNT(discount_percent) <= 1
ORDER BY product_name;


/* Question 6 */

SELECT 
    c.email_address, o.order_id, o.order_date
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
WHERE
    o.order_date = (SELECT 
            MIN(o.order_date)
        FROM
            orders
        WHERE
            c.customer_id = o.customer_id)
GROUP BY c.email_address
ORDER BY c.email_address;





