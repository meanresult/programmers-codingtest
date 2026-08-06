-- 입양을 간 동물 중,
-- order by limit 보호 기간이 가장 길었던 동물 두 마리의 
-- select 아이디와 이름을 조회하는 SQL문
WITH TEST AS (
                SELECT      I.ANIMAL_ID
                            ,I.NAME
                            ,TIMESTAMPDIFF(SECOND, I.DATETIME, O.DATETIME) AS DURATION_SECONDS

                FROM        ANIMAL_INS I

                INNER JOIN  ANIMAL_OUTS O
                ON          I.ANIMAL_ID = O.ANIMAL_ID

                ORDER BY    DURATION_SECONDS DESC
                LIMIT 2
            )
            
SELECT  ANIMAL_ID
        ,NAME

FROM    TEST
ORDER BY  DURATION_SECONDS DESC