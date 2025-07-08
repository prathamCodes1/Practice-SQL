EXISTS in SQL

SELECT * from products P where exists (SELECT * from orders O where O.id = P.id); 