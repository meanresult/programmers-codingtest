-- 희귀도가 'LEGEND'인 아이템들의 가격의 총합을 구하는 SQL문 - WHERE / AS 
-- 

SELECT      SUM(PRICE) AS TOTAL_PRICE
FROM        ITEM_INFO
WHERE       RARITY = 'LEGEND'