-- 코드를 작성해주세요

-- group by 물고기 종류, 잡은 수 
-- order by 잡은 수 desc

SELECT      COUNT(*) AS FISH_COUNT,
            B.FISH_NAME
FROM        FISH_INFO A  JOIN  FISH_NAME_INFO B
ON          A.FISH_TYPE = B.FISH_TYPE

GROUP BY    B.FISH_NAME
ORDER BY    FISH_COUNT DESC;