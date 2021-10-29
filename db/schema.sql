-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db

CREATE TABLE category (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
category_name VARCHAR(30) NOT NULL
);

CREATE TABLE product (
id int not null primary key auto_increment,
product_name varchar(30) not null,
price decimal(3,2) not null,
stock int not null default 10,
category_id int, 
foreign key (category_id)
references category(id) 
);

CREATE TABLE tag (
id int not null primary key auto_increment,
tag_name varchar(30)
);

CREATE TABLE producttag (
id int not null primary key auto_increment,
product_id int,
tag_id int,
foreign key (tag_id)
references tag(id),
foreign key (product_id)
references product(id)
);