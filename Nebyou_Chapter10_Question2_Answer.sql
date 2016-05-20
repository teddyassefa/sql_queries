
/* Chapter 10 Question # 2 */
create database db_user_downloads;
use  db_user_downloads;

    
CREATE TABLE tbl_users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    email_address VARCHAR(255) NOT NULL UNIQUE
);
                            
CREATE TABLE tbl_downloads (
    file_name VARCHAR(60) NOT NULL,
    download_date_time DATETIME DEFAULT NULL,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    CONSTRAINT downloads_fk_users FOREIGN KEY (user_id)
        REFERENCES tbl_users (user_id),
    CONSTRAINT downloads_fk_product FOREIGN KEY (product_id)
        REFERENCES tbl_product (product_id)
);
CREATE TABLE tbl_product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(60) NOT NULL
);
 
 
 
 
						
