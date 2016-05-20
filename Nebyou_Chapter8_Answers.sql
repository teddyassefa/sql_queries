/* Nebyou Wondimu
			Assignment Chapter 8 */
            
/* Question #1 */

SELECT 
    FORMAT(list_price, 1) as one_decimal_to_the_right,
    CONVERT( list_price , UNSIGNED) as convert_list_price_to_integer,
    CAST(list_price AS UNSIGNED) as cast_list_price_to_integer
FROM
    products;
/* Question #2 */


SELECT 
    DATE_FORMAT(CAST(date_added AS DATE), '%d') AS date_only,
    DATE_FORMAT(CAST(date_added AS DATE), '%m/%Y') AS month_and_year,
    DATE_FORMAT(CAST(CAST(date_added AS CHAR (14)) AS DATETIME),
            ' %k:%i:%s') AS full_time_only
FROM
    products;
  