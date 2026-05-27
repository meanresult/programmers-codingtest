-- 1.  10cm 이하의 물고기들은 10cm 로 취급하여 평균 길이를 구해주세요.
-- 2.  잡은 물고기의 평균 길이를 출력하는 SQL (AVERAGE_LENGTH)
-- 3. 

WITH FISH_INFO AS (
                SELECT 
                        ID
                        ,FISH_TYPE
                        ,CASE
                            WHEN LENGTH IS NOT NULL THEN LENGTH
                            WHEN LENGTH IS NULL THEN 10
                        END AS LENGTH
                        ,TIME
                FROM  FISH_INFO

            )

SELECT      ROUND(AVG(LENGTH),2) AS AVERAGE_LENGTH
FROM        FISH_INFO
