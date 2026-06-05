-- ANIMAL_INS - 동물 보호소에 들어온 동물의 정보
-- ANIMAL_OUTS - 동물 보호소에서 입양 보낸 동물의 정보

-- 1. 보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회하는 SQL문을 작성
-- 2. 보호 시작일이 빠른 순으로 조회

SELECT      I.ANIMAL_ID
            ,I.NAME

FROM        ANIMAL_INS I  INNER JOIN ANIMAL_OUTS O
ON          I.ANIMAL_ID = O.ANIMAL_ID

WHERE       I.DATETIME > O.DATETIME
ORDER BY    I.DATETIME ASC