-- 1. 평균 가격보다 비싼 모든 제품을 조회하세요.
SELECT *
FROM products
WHERE price > (SELECT avg(price) FROM products);

-- 2. 가장 최근에 주문한 고객의 정보를 조회하세요.
SELECT *
FROM customers
WHERE customer_id = (SELECT customer_id FROM orders ORDER BY order_date DESC LIMIT 1);

-- 3. 음료 카테고리(category_name = '음료')에 속하는 모든 제품을 조회하세요.
SELECT *
FROM products
WHERE category_id = (SELECT category_id FROM categories WHERE category_name ='음료');

-- 4. 서울에 위치한 고객이 주문한 모든 주문을 조회하세요.
SELECT *
FROM orders
WHERE customer_id in (SELECT customer_id FROM customers WHERE city = '서울');

-- 5. 어떤 직원보다도 더 많은 주문을 처리한 직원을 조회하세요.
SELECT *
FROM employees
WHERE employee_id = (SELECT employee_id FROM orders GROUP BY employee_id ORDER BY COUNT(*) DESC LIMIT 1);

-- 6. 적어도 한 번 이상 주문한 적이 있는 고객을 조회하세요.
SELECT *
FROM customers
WHERE customer_id in (SELECT customer_id FROM orders);

-- 7. 각 카테고리별 평균 가격을 구한 후, 그 평균 가격보다 비싼 제품을 해당 카테고리에서 조회하세요.

-- r결론
SELECT category_name, avg(price)
FROM categories c
JOIN products p ON c.category_id = p.category_id
GROUP BY category_name
HAVING avg(price) > (SELECT avg(l.a)
FROM (SELECT category_name, avg(price) a
FROM categories c
JOIN products p ON c.category_id = p.category_id
GROUP BY category_name) as l);

SELECT avg(l.a)
FROM (SELECT category_name, avg(price) a
FROM categories c
JOIN products p ON c.category_id = p.category_id
GROUP BY category_name) as l;


-- 8. 각 고객별 총 주문 금액을 계산한 후, 평균 주문 금액보다 많이 소비한 고객을 조회하세요.
SELECT customer_name, sum(od.quantity * p.price)
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od on od.order_id = o.order_id
JOIN products p ON p.product_id = od.product_id
GROUP BY customer_name
HAVING sum(od.quantity * p.price) > (SELECT avg(l.totalAmount)
FROM (SELECT customer_name, sum(od.quantity * p.price) as totalAmount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od on od.order_id = o.order_id
JOIN products p ON p.product_id = od.product_id
GROUP BY customer_name) as l);




-- 9. 각 카테고리의 이름과 해당 카테고리에 속한 제품 수를 조회하세요.
SELECT category_name, (SELECT count(*) FROM products WHERE products.category_id = categories.category_id) as 제품수 
FROM categories;

-- 10. 각 고객별로 가장 최근 주문한 날짜를 함께 조회하세요.
SELECT customer_name, (SELECT order_date FROM orders WHERE orders.customer_id = customers.customer_id ORDER BY order_date DESC LIMIT 1) as 최근주문일
FROM customers;
-- 11. 각 카테고리에서 가장 비싼 제품을 조회하세요.
SELECT category_name, 
(SELECT price FROM products WHERE products.category_id = categories.category_id ORDER BY price DESC LIMIT 1) as 가장비싼제품,
(SELECT product_name FROM products WHERE products.category_id = categories.category_id ORDER BY price DESC LIMIT 1) as product_name
FROM categories;

SELECT category_id, max(price)
FROM products p
GROUP BY category_id;

SELECT products.* , a.*
FROM products
JOIN (SELECT category_id, max(price) as m
FROM products
GROUP BY category_id) a on products.category_id = a.category_id AND price = a.m;


-- 12. 각 고객별로 평균보다 높은 금액의 주문만 조회하세요.
-- 주문 별 평균금액
SELECT avg(p.price * od.quantity), o.order_id, customer_id
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY customer_id, o.order_id;


-- 고객 당 주문 별 평균 금액
SELECT avg(a.aa), customer_id FROM 
(SELECT avg(p.price * od.quantity) aa, o.order_id, customer_id
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY customer_id, o.order_id) as a
GROUP BY customer_id;

-- 결론
SELECT ll.*, l.* FROM
(SELECT avg(p.price * od.quantity) as a, o.order_id, customer_id
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY customer_id, o.order_id) as ll
JOIN (SELECT avg(a.aa) as aa, customer_id FROM 
(SELECT avg(p.price * od.quantity) as aa, o.order_id, customer_id
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY customer_id, o.order_id) as a
GROUP BY customer_id) l on ll.customer_id = l.customer_id
WHERE a > aa; 


-- 13. 적어도 하나 이상의 주문을 받은 직원을 조회하세요.
SELECT *
FROM employees
WHERE employee_id in (SELECT employee_id FROM orders);

-- 14. 한 번도 주문하지 않은 고객을 조회하세요.
SELECT *
FROM customers
WHERE customer_id not in (SELECT customer_id FROM orders);


-- 15. 모든 음료 카테고리 제품보다 비싼 제품을 조회하세요.
SELECT *
FROM products
WHERE price > (SELECT max(price) FROM products WHERE category_id = (SELECT category_id FROM categories WHERE category_name = '음료')); 

-- 16. 적어도 한 개 이상의 유제품 카테고리 제품보다 비싼 제품을 조회하세요.
SELECT *
FROM products
WHERE price > (SELECT MIN(price) FROM products WHERE category_id = (SELECT category_id FROM categories WHERE category_name='유제품'));

-- 17. 각 카테고리별 평균 가격을 구한 후, 그 평균 가격보다 비싼 제품을 조회하세요.
SELECT avg(price), category_id
FROM products
GROUP BY category_id;

SELECT *
FROM products
JOIN (SELECT avg(price) a, category_id
FROM products
GROUP BY category_id) as l
WHERE price > l.a;


-- 18. 각 고객별 총 주문 금액을 계산한 후, 상위 5명의 고객을 조회하세요.
SELECT customer_name, sum(price * quantity)
FROM customers c
JOIN orders o on c.customer_id = o.customer_id
JOIN order_details od on o.order_id = od.order_id
JOIN products p ON p.product_id = od.product_id
GROUP BY customer_name
ORDER BY sum(price * quantity) DESC LIMIT 5;

-- 19. 각 카테고리별 제품 수와 각 공급업체별 제품 수를 구한 후, 이를 결합하여 카테고리와 공급업체별 제품 분포를 분석하세요.
SELECT category_name, COUNT(product_id)
FROM categories c
JOIN products p ON c.category_id = p.category_id
GROUP BY category_name;

SELECT supplier_name, COUNT(product_id)
FROM suppliers s
JOIN products p ON s.supplier_id = p.supplier_id
GROUP BY supplier_name;

SELECT c.category_name, s.supplier_name, count(product_id)
FROM products p
JOIN categories c ON p.category_id = c.category_id
JOIN suppliers s on s.supplier_id = p.supplier_id
GROUP BY c.category_name, s.supplier_name;





