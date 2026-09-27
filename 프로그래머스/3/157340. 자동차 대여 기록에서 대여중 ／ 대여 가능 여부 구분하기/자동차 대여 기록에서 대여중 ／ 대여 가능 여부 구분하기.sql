-- 2022년 10월 16일에 대여 중인 자동차와 대여가능한 자동차를 ID를 찾아야함 

-- select       ID와 AVAILABILITY
-- order by     자동차 ID를 기준으로 내림차순 정렬
-- *포인트*       group을 할 때  대여중을 가져오면서 대여 가능도 어떻게 가져올 것이냐?

WITH A AS (
            SELECT  CAR_ID,
                    CASE 
                        WHEN "2022-10-16" BETWEEN START_DATE AND END_DATE THEN 1
                        ELSE 0
                    END AS AVAILABILITY

            FROM    CAR_RENTAL_COMPANY_RENTAL_HISTORY
            )
            
SELECT  CAR_ID,
        CASE
            WHEN MAX(AVAILABILITY) = 1 THEN "대여중"
            ELSE "대여 가능"
        END AS AVAILABILITY
FROM    A
GROUP BY CAR_ID
ORDER BY 1 DESC