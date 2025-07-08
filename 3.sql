-- EXISTS -> return records if subquery produces one or more records
-- this returns all those products from the product table if there is entry in the orders table for the product 
SELECT * from products P WHERE EXISTS (SELECT * FROM orders O where o.product_id = p.id); 

-- ANY -> returns record if the record satisfies the condition with any one of the value returned by subquery 
-- this returns all the products for which there product_id is greater than any one of the orders
SELECT * from products P WHERE id > ANY(SELECT id FROM orders); 


-- ALL -> returns record if the record satisfies the condition with any one of the value returned by subquery 
-- this returns all the products for which there product_id is greater than all the orders 
SELECT * from products P WHERE id > ALL(SELECT id FROM orders);