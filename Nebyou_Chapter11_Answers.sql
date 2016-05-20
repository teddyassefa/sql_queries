/* Nebyou Wondimu
			Assignment Chapter 11 */
            
/* Question #1 */

CREATE INDEX ZipCode_index ON  addresses(zip_code);
-- Or
ALTER TABLE addresses ADD INDEX(zip_code);

/* Question #2 */

/*  
In the Downloads table, the user_id and product_id columns are the foreign keys.
Include a statement to drop the database if it already exists.
Include statements to create and select the database.
Include any indexes that you think are necessary.
Specify the utf8 character set for all tables.
Specify the InnoDB storage engine for all tables.  (8 points)
*/

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    email_address VARCHAR(100) NOT NULL UNIQUE,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL
);

