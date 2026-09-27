-- SELECT 분화된 연도(YEAR), 분화된 연도별 대장균 크기의 편차(YEAR_DEV), 대장균 개체의 ID(ID)
-- GROUP BY / YEAR, MAX() - 분화된 연도별 가장 큰 대장균의 크기 - 각 대장균의 크기
-- ORDER BY [연도에 대해 오름차순으로 정렬하고 같은 연도에 대해서는 대장균 크기의 편차]

WITH YEARG AS (
                SELECT  ID,
                        PARENT_ID,
                        SIZE_OF_COLONY,
                        YEAR(DIFFERENTIATION_DATE) AS YEAR,
                        DIFFERENTIATION_DATE,
                        GENOTYPE
                FROM    ECOLI_DATA
                -- LIMIT   5
                ),

MAXS AS (
                SELECT      MAX(SIZE_OF_COLONY) AS MAXCOLONY,
                            YEAR
                FROM        YEARG
                GROUP BY    YEAR                        
            )

SELECT      Y.YEAR,
            M.MAXCOLONY - Y.SIZE_OF_COLONY AS YEAR_DEV,
            Y.ID

FROM        YEARG Y

LEFT JOIN   MAXS M
ON          Y.YEAR = M.YEAR

ORDER BY    Y.YEAR, YEAR_DEV

-- --------------------
-- 개선사항
-- over (partition by ) 사용 - group by에서 값을 찾을 때는 사용하면 좋음  
-- 행을 그대로 유지하면서 그룹화를 하고 싶을 때 
''' select       year(DIFFERENTIATION_DATE) as year,
                max(SIZE_OF_COLONY) over (partition by year) - SIZE_OF_COLONY as YEAR_DEV,
                ID
    
    FROM        ECOLI_DATA
    
    ORDER BY    1, 2'''
