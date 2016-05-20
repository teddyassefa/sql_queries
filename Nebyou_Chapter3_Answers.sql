-- Assignment Chapter 3 
-- Nebyou Wondimu
USE my_guitar_shop;

-- Question 1

SELECT 
    CONCAT_WS(', ', first_name, last_name) AS FullName
FROM
    customers
WHERE
    last_name REGEXP '^[M-Z].*$';

-- Question 2

SELECT 
    product_name, list_price, date_added
FROM
    products
WHERE
    list_price >= 500 AND list_price <= 2000
ORDER BY date_added DESC;

-- Question 3

SELECT 
    product_name,
    list_price,
    discount_percent,
    ROUND((list_price * discount_percent / 100), 2) AS DiscountAmount,
    ROUND((list_price - (list_price * discount_percent / 100)),
            2) AS DiscountPrice
FROM
    products
ORDER BY DiscountPrice DESC
LIMIT 0 , 5;

-- Question 4 

SELECT 
    item_id,
    item_price,
    discount_amount,
    quantity,
    item_price * quantity AS Price_Total,
    discount_amount * quantity AS Discount_Total,
    (item_price - discount_amount) * quantity AS Item_Total
FROM
    order_items
WHERE
    ((item_price - discount_amount) * quantity) > 500
ORDER BY Item_Total DESC;

-- Question 5

SELECT 
    order_id, order_date, ship_date
FROM
    orders
WHERE
    ISNULL(ship_date);

-- Question 6


SELECT NOW() AS Today_Unformatted;
SELECT DATE_FORMAT(NOW(), '%d-%b-%Y') AS Today_Formatted;

-- Question 7

SELECT 
    100 AS Price,
    .07 AS tax_rate,
    (100 * .07) AS tax_amount,
    (100 + .07) AS total;


