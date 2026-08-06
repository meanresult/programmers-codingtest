--  select   : ANIMAL_ID	NAME	중성화
--  case when then  : SEX_UPON_INTAKE 'Neutered' 또는 'Spayed'라는 단어가 들어있습니다
--  order by : 동물의 아이디와 이름, 중성화 여부를 아이디 순
SELECT      ANIMAL_ID
            ,NAME
            ,CASE 
                    WHEN SEX_UPON_INTAKE LIKE '%Neutered%' OR SEX_UPON_INTAKE LIKE '%Spayed%' THEN 'O'
                    ELSE 'X'
             END AS '중성화'

FROM        ANIMAL_INS
ORDER BY    ANIMAL_ID
            ,ANIMAL_TYPE
            ,'중성화'