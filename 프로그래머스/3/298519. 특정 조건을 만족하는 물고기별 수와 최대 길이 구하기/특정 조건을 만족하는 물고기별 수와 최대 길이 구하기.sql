-- 코드를 작성해주세요
-- WHERE 평균길이 33CM 이상인 물고기
-- GROUP BY 종류
-- SELECT 잡은 수, 최대길이, 물고기의 종류
-- ORDER BY 물고기 종류 오름차순
-- 10CM이하의 물고기들은 10CM로 취급하여 평균길이를 구하기

SELECT      COUNT(ID) AS FISH_COUNT
            , MAX(LENGTH) AS MAX_LENGTH
            , FISH_TYPE 
FROM        (
             SELECT      ID
                        ,FISH_TYPE
                        ,CASE 
                        WHEN LENGTH <= 10 OR LENGTH IS NULL THEN 10
                        ELSE LENGTH
                        END AS LENGTH
             FROM        FISH_INFO
            ) AS A
GROUP BY    FISH_TYPE 
HAVING      AVG(LENGTH) >= 33
ORDER BY    FISH_TYPE;


/*
SELECT      ID
            ,CASE 
            WHEN LENGTH <= 10 OR LENGTH IS NULL THEN 10
            ELSE LENGTH
            END 
FROM        FISH_INFO;
*/