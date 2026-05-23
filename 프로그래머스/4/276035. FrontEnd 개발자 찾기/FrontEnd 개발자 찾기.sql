-- Front End 스킬을 가진 개발자의 정보를 조회 - WHERE, JOIN 
-- 조건에 맞는 개발자의 ID, 이메일, 이름, 성 - SELECT 
-- ID를 기준으로 오름차순 - ORDER BY 

SELECT      DISTINCT
            D.ID,
            D.EMAIL,
            D.FIRST_NAME,
            D.LAST_NAME

FROM        DEVELOPERS D INNER JOIN SKILLCODES S
ON          D.SKILL_CODE & S.CODE = S.CODE
WHERE       S.CATEGORY = 'Front End'
ORDER BY    D.ID