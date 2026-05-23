-- 1. 자동차 종류가 '세단'인 자동차들 중 - [WHERE CAR_TYPE '세단']
-- 2. 10월에 대여를 시작한 기록이 있는 자동차 ID 리스트를 출력하는 SQL - [WHERE MONTH(START_DATE) = 10] 
-- 3. ID 리스트는 중복이 없어야 하며 - [DISTINCT] 
-- 4. 자동차 ID를 기준으로 내림차순 정렬 - [ORDER BY  DESC]



SELECT      DISTINCT C.CAR_ID

FROM        CAR_RENTAL_COMPANY_CAR C INNER JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY R
ON          C.CAR_ID = R.CAR_ID

WHERE       C.CAR_TYPE = '세단'
            AND 
            MONTH(R.START_DATE) = 10 

ORDER BY    C.CAR_ID DESC