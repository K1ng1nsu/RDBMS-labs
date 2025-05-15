-- 1. 각 카테고리(category_id)별 제품 수를 계산하세요.
SELECT count(*) , category_name
FROM products
JOIN categories ON products.category_id = categories.category_id
GROUP BY products.category_id;

-- 2. 각 공급업체(supplier_id)별 제품의 평균 가격을 계산하세요.
SELECT avg(price), supplier_name
FROM products
JOIN suppliers ON products.supplier_id = suppliers.supplier_id
GROUP BY products.supplier_id;

-- 3. 각 주문(order_id)별 주문된 총 제품 수량(quantity)을 계산하세요.
SELECT order_details.order_id, sum(quantity)
FROM order_details
JOIN products ON order_details.product_id = products.product_id
GROUP BY order_details.order_id;

-- 4. 각 고객(customer_id)별 주문 수를 계산하세요.
SELECT  customer_name ,count(*) as '주문 수'
FROM orders
JOIN customers ON customers.customer_id = orders.customer_id
GROUP BY orders.customer_id;


-- 5. 평균 가격이 15,000원 이상인 카테고리를 조회하세요.
SELECT avg(price), category_name, products.category_id
FROM products
JOIN categories
ON products.category_id = categories.category_id
GROUP BY products.category_id
HAVING avg(price) >= 15000;




-- 6. 10개 이상의 제품을 공급하는 공급업체(supplier_id)를 조회하세요.
SELECT count(*) as '공급 품목 수', supplier_name
FROM products
JOIN suppliers ON products.supplier_id = suppliers.supplier_id
GROUP BY products.supplier_id
HAVING count(*) >= 0;



-- 7. 총 주문량(quantity)이 50개 이상인 주문(order_id)을 조회하세요.
SELECT sum(quantity), order_details.order_id, customer_name
FROM order_details
JOIN orders ON order_details.order_id = orders.order_id
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY order_details.order_id
HAVING sum(quantity) >= 50;

-- 8. 3회 이상 주문한 고객(customer_id)을 조회하세요.
SELECT count(*), customer_name, customers.customer_id
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY customer_id
HAVING count(*) >= 3;

-- 9. 각 카테고리(category_id)와 공급업체(supplier_id) 조합별 제품 수를 계산하세요.
SELECT count(*), categories.category_id,categories.category_name, suppliers.supplier_id,suppliers.supplier_name
FROM products
JOIN categories ON products.category_id = categories.category_id
JOIN suppliers ON products.supplier_id = suppliers.supplier_id
GROUP BY products.category_id, products.supplier_id;

-- 10. 각 고객(customer_id)별, 연도별 주문 수를 계산하세요.
SELECT count(*), customer_id, month(order_date)
FROM orders
GROUP BY customer_id, month(order_date);

-- 11. 각 직원(employee_id)별, 고객(customer_id)별 처리한 주문 수를 계산하세요.
SELECT count(*), employees.employee_id, employees.name, customers.customer_id, customers.customer_name
FROM orders
JOIN employees ON orders.employee_id = employees.employee_id
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY orders.employee_id, orders.customer_id;

-- 12. 각 카테고리 이름(category_name)별 제품 수와 평균 가격을 계산하세요.
SELECT count(*), avg(price), category_name
FROM products
JOIN categories ON products.category_id = categories.category_id
GROUP BY categories.category_name;

-- 13. 각 고객 이름(customer_name)별 총 주문 수와 주문한 고유한 제품 수를 계산하세요.
SELECT count(DISTINCT orders.order_id), customer_name, count(DISTINCT products.product_id)
FROM order_details
JOIN orders ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id = products.product_id
JOIN customers ON customers.customer_id = orders.customer_id
GROUP BY customer_name;

