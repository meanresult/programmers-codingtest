-- 1. 7월 아이스크림 총 주문량 + 상반기의 아이스크림 총 주문량
-- 2. 큰 순서대로 상위 3개의 맛을 조회하는 SQL

WITH TOTAL AS (
                SELECT      H.SHIPMENT_ID
                            ,H.FLAVOR
                            ,SUM(H.TOTAL_ORDER + J.TOTAL_ORDER) AS TOTAL_ORDER
                FROM        FIRST_HALF H INNER JOIN JULY J
                ON          H.FLAVOR = J.FLAVOR
                GROUP BY    H.SHIPMENT_ID
                            ,H.FLAVOR 
                )

SELECT      FLAVOR
FROM        TOTAL
ORDER BY    TOTAL_ORDER DESC
LIMIT       3

