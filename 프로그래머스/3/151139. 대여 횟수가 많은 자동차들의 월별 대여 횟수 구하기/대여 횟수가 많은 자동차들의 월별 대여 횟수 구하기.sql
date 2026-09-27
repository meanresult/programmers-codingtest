-- select : MONTH	CAR_ID	RECORDS
-- where between and : 2022년 8월부터 2022년 10월까지

-- 총 대여 횟수가 5회 이상인 자동차
-- GROUP BY : CAR_ID
-- HAVING :  count(CAR_ID) >= 5 

-- GROUP BY : 월별, 자동차 ID
-- SELECT : 총 대여 횟수(RECORDS)
-- order by : 월을 기준으로 오름차순, 자동차 ID를 기준으로 내림차순

-- 해당 기간 자동차의 5번 대여한 CAR_ID 구하기 
WITH G AS (
            SELECT          car_id,
                            COUNT(car_id) AS CNT 

            FROM            CAR_RENTAL_COMPANY_RENTAL_HISTORY
            WHERE           START_DATE BETWEEN "2022-08-01" AND "2022-10-30"
            GROUP BY        car_id
            HAVING          CNT >= 5
            )

-- 5번 이상 대여한 CAR_ID와 JOIN 하여 월별, 자동차별 
SELECT      MONTH(C.START_DATE) AS MONTH,
            C.CAR_ID,
            COUNT(C.CAR_ID) AS RECORDS
FROM        CAR_RENTAL_COMPANY_RENTAL_HISTORY C
INNER JOIN  G G
ON          C.CAR_ID = G.CAR_ID
WHERE       C.START_DATE BETWEEN "2022-08-01" AND "2022-10-31"
GROUP BY    MONTH, C.CAR_ID
ORDER BY    1, 2 DESC

