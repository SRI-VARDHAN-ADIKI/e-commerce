-- Create database if not exists
CREATE DATABASE IF NOT EXISTS online_shopping;

-- Use the database
USE online_shopping;

-- Drop tables if they exist (in correct order due to foreign key constraints)
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS cart;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS address;
DROP TABLE IF EXISTS category;

-- Create tables
CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT
);

CREATE TABLE address (
    id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    pincode INT NOT NULL
);

CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email_id VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    phone_no VARCHAR(20) NOT NULL,
    role VARCHAR(20) NOT NULL,
    address_id INT,
    FOREIGN KEY (address_id) REFERENCES address(id)
);

CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    image_name VARCHAR(255),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    user_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(255) NOT NULL UNIQUE,
    product_id INT,
    user_id INT,
    quantity INT NOT NULL,
    order_date VARCHAR(255) NOT NULL,
    delivery_status VARCHAR(50) NOT NULL,
    delivery_date VARCHAR(255),
    delivery_time VARCHAR(50),
    delivery_assigned VARCHAR(10),
    delivery_person_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (user_id) REFERENCES user(id)
); 