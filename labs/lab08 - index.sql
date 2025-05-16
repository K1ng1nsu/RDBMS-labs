SHOW INDEX FROM products;

DESC products;

CREATE INDEX idx_product_name ON products(product_name);

SELECT * FROM products WHERE product_name = '삼다수';

EXPLAIN SELECT * FROM products;
EXPLAIN SELECT * FROM products WHERE product_name = '삼다수';
EXPLAIN SELECT * FROM products WHERE product_id = 1;

DROP INDEX idx_proudct_name ON products;
