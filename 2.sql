-- Creating a view
CREATE OR REPLACE VIEW costlyOrders as SELECT * FROM orders where amount > 300;

-- Quering a view 
SELECT * from costlyOrders