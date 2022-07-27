-- Comments in SQL Start with dash-dash --
-- Add a product to the table with the name of “chair”, price of 44.00, and can_be_returned of false.
-- Add a product to the table with the name of “stool”, price of 25.99, and can_be_returned of true.
-- Add a product to the table with the name of “table”, price of 124.00, and can_be_returned of false.

INSERT INTO products (name, price, can_be_returned)
  VALUES
   ('chair', 44.00, FALSE ),
   ('stool', 25.99, TRUE ),
   ('table', 124.00, FALSE );


-- Display all of the rows and columns in the table.
Select * From products;


-- Display all of the names of the products.
Select name From products;


-- Display all of the names and prices of the products.
Select name, price From products;


-- Add a new product - make up whatever you would like!
INSERT INTO products (name, price, can_be_returned)
  VALUES
   ('night stand', 90.00, FALSE );


-- Display only the products that can_be_returned.
Select * from products where can_be_returned = TRUE;


-- Display only the products that have a price less than 44.00.
Select * from products where price < 44.00;


-- Display only the products that have a price in between 22.50 and 99.99.
Select * from products where price between 22.50 and 99.99;

-- There’s a sale going on: Everything is $20 off! Update the database accordingly.
Update products Set price = price - 20


-- Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.
Delete From products where price < 25;
-- And now the sale is over. For the remaining products, increase their price by $20.
Update products Set price = price + 20

-- There is a new company policy: everything is returnable. Update the database accordingly.
Update products set can_be_returned = TRUE