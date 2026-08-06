-- 보호소에 돌아가신 할머니가 기르던 개를 찾는 사람이 찾아왔습니다. 
-- 이름에 "EL"이 들어가는 개의 아이디와 이름을 조회하는 SQL문
-- 결과는 이름 순, 아이디 순
SELECT      ANIMAL_ID
            ,NAME
FROM        ANIMAL_INS
WHERE       NAME LIKE '%el%'
            AND ANIMAL_TYPE	= 'Dog'
ORDER BY    NAME, ANIMAL_ID