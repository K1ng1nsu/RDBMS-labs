-- 모든 고객(customers) 정보를 조회하세요.
SELECT * FROM customers;

-- 고객(customers) 테이블에서 이름(customer_name)과 도시(city)만 조회하세요.
SELECT customer_name, city FROM customers;

-- 주문(orders)에서 고유한 고객 ID(customer_id)를 조회하세요.
SELECT DISTINCT customer_id FROM orders;

-- 제품(products)에서 고유한 카테고리 ID(category_id)를 조회하세요.
SELECT DISTINCT category_id FROM products;

-- 제품(products)을 가격(price)의 오름차순으로 정렬하여 조회하세요.
SELECT * FROM products ORDER BY price;

-- 직원(employees)을 생년월일(birth_date)의 내림차순으로 정렬하여 조회하세요.
SELECT * FROM employees
ORDER BY birth_date DESC;


-- 제품(products)을 카테고리 ID(category_id)의 오름차순, 가격(price)의 내림차순으로 정렬하여 조회하세요.
SELECT * FROM products
ORDER BY category_id, price desc;

-- 고객(customers)을 국가(country)의 오름차순, 도시(city)의 오름차순으로 정렬하여 조회하세요.
SELECT * FROM customers
ORDER BY country, city;

-- 제품(products)에서 제품명(product_name)과 가격(price)을 조회하고, 가격이 높은 순서대로 정렬하세요.
SELECT product_name, price
FROM products
ORDER BY price DESC;

-- 가장 비싼 상위 5개 제품을 조회하세요.
SELECT * FROM products
ORDER BY price DESC
LIMIT 5;

-- 제품 이름(product_name)과 가격(price)을 조회하되, 가장 저렴한 10개 제품만 표시하세요.
SELECT product_name, price
FROM products
ORDER BY price
LIMIT 10;