/* Nebyou Wondimu
			Assignment Chapter 9 */

/* Question 1 */

USE my_guitar_shop;

SELECT 
    list_price, discount_percent, ROUND((list_price-discount_percent), 2) AS discount_amount
FROM
    products;


/* Question 2 */


SELECT 
    order_date,
    DATE_FORMAT(CAST(order_date AS DATE), '%Y') AS Four_Digit_Year,
    DATE_FORMAT(CAST(order_date AS DATE), '%m-%d-%Y') AS Mon_DD_YYYY,
    DATE_FORMAT(CAST(CAST(order_date AS CHAR (14)) AS DATETIME),
            ' %k:%i:%p') AS 12_HOUR_AM_PM,
    DATE_FORMAT(CAST(order_date AS DATETIME),
            '%m/%d/%y %00:%k:%i') AS Mon_DD_YY_HH_MM
FROM
    orders;
    
  /* Question 3 */  
  
  SELECT 
    card_number,
    CHAR_LENGTH(card_number) AS length_of_card_number,
    RIGHT(card_number, 4) AS last_four_digit,
    CONCAT('XXXX-XXXX-XXXX-',
            SUBSTRING(card_number, - 4)) AS masked_cc
FROM
    orders;
select product_name from products;

select distinct 
     if(LOCATE(' ', product_name)>0, SUBSTRING(product_name, 3, LOCATE(' ', product_name)), product_name)
from products;
    
    
/* i ran out of time for ///// A column that returns the third word in the product_name in the products table. If there is no third word, 
it should return an empty string. You can do this using IF, LOCATE, and SUBSTRING_INDEX. Hint, 
this is complicated, see the solution for exercise 3 in chapter 9 for some ideas. 
Order by card_number//////// */































    
