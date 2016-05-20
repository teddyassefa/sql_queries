/* Assignment Chapter 3 
    Nebyou Wondimu */


/* Write an INSERT statement that adds this row to the Categories table: category_name: Brass 
Code the INSERT statement so MySQL automatically generates the category_id column */
-- Question 1

use my_guitar_shop;

insert into categories (category_name) values ('Brass');


/* Question 2 */
UPDATE categories 
SET 
    category_name = 'Woodwinds'
WHERE
    category_id = 5;
  
/* Question 3 */

DELETE FROM categories 
WHERE
    category_id = 5;
    
/* Question 4 */

INSERT INTO products (category_id,product_code,product_name,description,list_price,discount_percent,date_added) 
		VALUES (4,'dgx_640','Yamaha DGX 640 88-Key Digital Piano','Long description to come',799.99,0,CURDATE());

/* Question 5 */

UPDATE products 
SET 
    discount_percent = 35
WHERE
    product_id = 11;
    
/* Question 6 */

INSERT INTO customers (email_address,password,first_name,last_name) 
			VALUES ('rick@raven.com','','Rick','Raven');

/* Question 7 */
UPDATE customers 
SET 
    password = 'secrets'
WHERE
    email_address = 'rick@raven.com';
/* Question 8 */
UPDATE customers 
SET 
    password = 'reset'
LIMIT 100;
/* Question 9 */

/* All data in  my_guitar_shop restored */