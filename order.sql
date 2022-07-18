-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(30),
  product_price DECIMAL,
  quantity INTEGER
  );
-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
 VALUES (1, 'pizza', 4.99, 1),
 (2, 'burger', 5.99, 1),
 (1, 'sandwhich', 7.99, 1),
 (2, 'nachos', 3.99, 1),
 (1, 'drink', 1.99, 1);
-- person_id should be different for different people.
-- Select all the records from the orders table.
SELECT * FROM orders
-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders; 
-- Calculate the total order price.
SELECT SUM(product_price) FROM orders;
-- Calculate the total order price by a single person_id.
SELECT SUM(product_price) FROM orders
WHERE person_id = 1; 
