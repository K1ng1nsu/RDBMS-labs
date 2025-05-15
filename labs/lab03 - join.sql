-- 1. 제품(products) 테이블과 카테고리(categories) 테이블을 조인하여 각 제품의 이름과 해당 카테고리 이름을 조회하세요.
SELECT product_name, category_name
FROM products
JOIN categories 
ON products.category_id = categories.category_id;

-- 2. 주문(orders) 테이블과 고객(customers) 테이블을 조인하여 각 주문의 주문 ID, 주문일, 고객 이름을 조회하세요.
SELECT order_id, order_date, customer_name
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id;


-- 3. 주문(orders), 고객(customers), 직원(employees) 테이블을 조인하여 주문 ID, 주문일, 고객 이름, 담당 직원의 이름(성과 이름 결합)을 조회하세요.
SELECT order_id, order_date,customer_name, name
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
JOIN employees ON orders.employee_id = employees.employee_id;

-- 4. 제품(products), 공급업체(suppliers), 카테고리(categories) 테이블을 조인하여 제품 이름, 공급업체 이름, 카테고리 이름을 조회하세요.
SELECT product_name, supplier_name, category_name
FROM products
JOIN categories ON products.category_id = categories.category_id
JOIN suppliers ON products.supplier_id = suppliers.supplier_id;

-- 5. 모든 고객과 그들이 한 주문을 조회하세요. 주문을 하지 않은 고객도 결과에 포함되어야 합니다.
SELECT *
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id;

-- 6. 모든 제품과 각 제품에 대한 주문 상세 정보를 조회하세요. 주문되지 않은 제품도 결과에 포함되어야 합니다.
SELECT *
FROM products
LEFT JOIN order_details ON products.product_id = order_details.product_id;

-- 7. 모든 주문과 해당 주문을 처리한 직원을 조회하세요. 담당 직원이 없는 주문도 포함되어야 합니다.
SELECT *
FROM orders
LEFT JOIN employees
ON orders.employee_id = employees.employee_id;

-- 8. 모든 주문 상세와 해당 제품 정보를 조회하세요. 제품 정보가 없는 주문 상세도 포함되어야 합니다.
SELECT *
FROM order_details
LEFT JOIN products
ON order_details.product_id = products.product_id;

-- 9. 모든 고객과 모든 주문을 UNION으로 조회하세요. 주문이 없는 고객과 고객 정보가 없는 주문도 모두 결과에 포함되어야 합니다.
SELECT *
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
	UNION
SELECT *
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;

-- 10. 고객(customers) 테이블에서 같은 도시에 있는 고객들을 쌍으로 조회하세요. (각 쌍은 한 번만 표시되어야 함)
SELECT *
FROM customers c1
JOIN customers c2
ON c1.city = c2.city
WHERE c1.customer_id < c2.customer_id;



-- 11. 주문 상세 정보를 조회하되, 주문 ID와 제품 ID를 기준으로 조인하세요.
SELECT *
FROM order_details
JOIN products ON order_details.product_id = products.product_id
JOIN orders ON order_details.order_id = orders.order_id;


-- 12. 서울에 위치한 고객들의 주문 정보를 조회하세요.
SELECT *
FROM orders
JOIN (SELECT * FROM customers WHERE customers.city = '서울') a
ON orders.customer_id = a.customer_id;

SELECT *
FROM orders
JOIN customers 
ON orders.customer_id = customers.customer_id
WHERE customers.city ='서울';

-- 13. 카테고리가 '음료'인 제품들 중 가격이 10,000원 이상인 제품의 이름, 가격, 공급업체 이름을 조회하세요.
SELECT product_name, price, supplier_name
FROM products
JOIN categories
ON products.category_id = categories.category_id
JOIN suppliers
ON products.supplier_id = suppliers.supplier_id
WHERE category_name ='음료' AND price >= 10000;


SELECT product_name, price, supplier_name
FROM products
JOIN (SELECT category_id, category_name FROM categories WHERE category_name ='음료') c
ON products.category_id = c.category_id
JOIN suppliers
ON products.supplier_id = suppliers.supplier_id;

