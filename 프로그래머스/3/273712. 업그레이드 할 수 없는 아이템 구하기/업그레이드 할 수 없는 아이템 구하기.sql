-- 아이템 ID(ITEM_ID), 아이템 명(ITEM_NAME), 아이템의 희귀도(RARITY)를 출력하는 SQL 문을 작성
-- 결과는 아이템 ID를 기준으로 내림차순

SELECT      I.ITEM_ID
            ,I.ITEM_NAME
            ,I.RARITY
            
FROM        ITEM_INFO I LEFT JOIN ITEM_TREE T
ON          I.ITEM_ID = T.PARENT_ITEM_ID

WHERE       T.PARENT_ITEM_ID IS NULL
ORDER BY    I.ITEM_ID DESC