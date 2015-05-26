-- korning schema
-- filename: schema.sql

DROP TABLE if EXISTS sales CASCADE;
DROP TABLE if EXISTS employee CASCADE;
DROP TABLE if EXISTS customer CASCADE;
DROP TABLE if EXISTS product CASCADE;
DROP TABLE if EXISTS invoice_frequency CASCADE;

CREATE TABLE sales (
  employee_id VARCHAR(255),
  customer_id VARCHAR(255),
  product_id VARCHAR(255),
  sale_date VARCHAR(255),
  sale_amount VARCHAR(255),
  units_sold INTEGER,
  invoice_no INTEGER UNIQUE,
  invoice_frequency_id VARCHAR(255)
);

CREATE TABLE employee (
  id SERIAL PRIMARY KEY,
  employee_name VARCHAR(255) UNIQUE NOT NULL,
  employee_email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE customer (
  id SERIAL PRIMARY KEY,
  customer_name VARCHAR(255) UNIQUE NOT NULL,
  customer_reference VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE product (
  id SERIAL PRIMARY KEY,
  product_name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE invoice_frequency (
  id SERIAL PRIMARY KEY,
  invoice_frequency VARCHAR(255)
);

-- Each row represents a sale and
-- contains the employee who was in
-- charge of the sale, the customer,
--  the product being sold, how much was sold,
--   and additional invoice details.
