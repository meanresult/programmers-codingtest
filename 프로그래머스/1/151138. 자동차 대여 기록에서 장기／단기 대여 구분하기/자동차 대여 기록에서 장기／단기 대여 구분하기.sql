-- 1. 대여 시작일이 2022년 9월에 속하는 대여 기록
-- 2. 대여 기간이 30일 이상이면 '장기 대여'
-- 3. 그렇지 않으면 '단기 대여'
-- 4. 컬럼명: RENT_TYPE
-- 5. 대여 기록 ID - DESE


SELECT      HISTORY_ID
            ,CAR_ID
            ,START_DATE
            ,END_DATE
            ,CASE
                WHEN DATEDIFF(END_DATE, START_DATE)+1 >= 30 THEN  '장기 대여'
                ELSE  '단기 대여'
            END AS RENT_TYPE
        
FROM        CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE       MONTH(START_DATE) = 9
ORDER BY    history_id DESC