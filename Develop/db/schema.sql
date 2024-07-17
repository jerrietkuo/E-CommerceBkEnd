-- -- DROP DATABASE
-- \qDROP DATABASE IF EXISTS ecommerce_db;

-- -- CREATE DATABASE
-- CREATE DATABASE ecommerce_db;

-- Remove or comment out any DROP DATABASE or CREATE DATABASE commands

-- DROP DATABASE IF EXISTS ecommerce_db;
-- CREATE DATABASE ecommerce_db;

-- Table creation and other SQL commands go here
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL NOT NULL,
    stock INTEGER DEFAULT 10,
    category_id INTEGER REFERENCES categories(id)
);

CREATE TABLE tags (
    id SERIAL PRIMARY KEY,
    tag_name VARCHAR(255)
);

CREATE TABLE product_tags (
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES products(id),
    tag_id INTEGER REFERENCES tags(id)
);