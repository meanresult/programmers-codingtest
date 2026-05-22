-- 코드를 작성해주세요

# SELECT      CASE
#                 WHEN S.NAME = 'Python' AND S.CATEGORY = 'Front End' THEN 'A'
#                 WHEN S.NAME = 'C#'                                  THEN 'B'
#                 WHEN S.CATEGORY = 'Front End'                       THEN 'C'
#             END AS GRADE,

WITH TEMP AS (
            
                SELECT      CASE
                                WHEN MAX(CASE WHEN S.NAME = 'Python' THEN 1 ELSE 0 END) = 1 
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

            )

SELECT      *
FROM        TEMP
WHERE       GRADE IS NOT NULL
ORDER BY    GRADE ASC, ID ASC