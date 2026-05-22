# SELECT      *
# FROM        SKILLCODES AS S INNER JOIN DEVELOPERS AS D
# ON          S.CODE & D.SKILL_CODE = S.CODE
# ORDER BY    D.ID
   


            
SELECT      CASE
                WHEN MAX(CASE WHEN S.NAME = 'Python' THEN 1 ELSE 0 END) = 1 -- MAX가 없으면 동일한 ID의 여러 행 중에서 어떤 걸 가져와서 보여줘야할지 모름, 집계함수로 계산
                 AND MAX(CASE WHEN S.CATEGORY = 'Front End' THEN 1 ELSE 0 END) = 1 
                THEN 'A'

                WHEN MAX(CASE WHEN S.NAME = 'C#' THEN 1 ELSE 0 END) = 1 
                THEN 'B'

                WHEN MAX(CASE WHEN S.CATEGORY = 'Front End' THEN 1 ELSE 0 END) = 1 
                THEN 'C'
            END AS GRADE
            ,D.ID
            ,D.EMAIL

FROM        SKILLCODES AS S INNER JOIN DEVELOPERS AS D
ON          S.CODE & D.SKILL_CODE = S.CODE
GROUP BY    D.ID, D.EMAIL
HAVING      GRADE IS NOT NULL
ORDER BY    GRADE ASC, ID ASC