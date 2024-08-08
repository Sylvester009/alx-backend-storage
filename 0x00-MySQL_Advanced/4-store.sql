-- Write a SQL script that creates a trigger
-- it decreases the quantity of an item after adding a new order.
-- Quantity in the table items can be negative.


CREATE TRIGGER decrease_quantity_of_item AFTER INSERT ON orders
FOR EACH ROW
-- Update the quantity of the item in the items table
UPDATE items
SET quantity = quantity - NEW.number
WHERE name = NEW.item_name;