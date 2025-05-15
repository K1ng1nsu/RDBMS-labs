-- 1. 전체 제품(products) 수를 계산하세요.
SELECT count(*) FROM products;

-- 2. 모든 제품의 평균 가격(Price)을 계산하세요.
SELECT avg(price) FROM products;

-- 3. 가장 비싼 제품과 가장 저렴한 제품의 가격을 조회하세요.
SELECT max(price), min(price) FROM products;

-- 4. 모든 주문 상세(order_details)에서 주문된 총 제품 수량(Quantity)을 계산하세요.
SELECT sum(quantity) FROM order_details;