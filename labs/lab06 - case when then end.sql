-- 1. 각 카테고리별 고가 제품(20,000원 이상)과 저가 제품(20,000원 미만)의 수를 계산하세요.
SELECT 
    COUNT(CASE
        WHEN price >= 20000 THEN 1
    END) AS 'price >= 20000',
    COUNT(CASE
        WHEN price < 20000 THEN 1
    END) AS 'price < 20000'
FROM
    products;



-- 2. 각 고객별 2023년 7월 15일 이전과 이후의 주문 수를 계산하세요.
SELECT 
    customer_id,
    COUNT(CASE
        WHEN order_date > '20230715' THEN 1
    END) AS 'after230715',
    COUNT(CASE
        WHEN order_date <= '20230715' THEN 1
    END) AS 'on or before 230715'
FROM
    orders
GROUP BY orders.customer_id;
