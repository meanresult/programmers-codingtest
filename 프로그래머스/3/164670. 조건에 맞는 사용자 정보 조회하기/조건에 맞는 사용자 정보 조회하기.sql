-- 1. 테이블에서 중고 거래 게시물을 3건 이상 등록 - [WHERE]
-- 2. 용자 ID, 닉네임, 전체주소(CONCAT), 전화번호(xxx-xxxx-xxxx) - [SELECT]
-- 3. 회원 ID를 기준으로 내림차순

WITH TEMP AS (
            SELECT      COUNT(*) AS review
                        ,U.USER_ID
                        ,U.NICKNAME
                        ,U.CITY
                        ,U.STREET_ADDRESS1
                        ,U.STREET_ADDRESS2
                        ,U.TLNO

            FROM        USED_GOODS_BOARD G INNER JOIN USED_GOODS_USER U
            ON          G.WRITER_ID = U.USER_ID
            GROUP BY    G.WRITER_ID
            )
            
SELECT      USER_ID
            ,NICKNAME
            ,CONCAT(CITY,' ', STREET_ADDRESS1,' ', STREET_ADDRESS2) AS '전체주소'
            ,CONCAT(
                    SUBSTR(TLNO, 1, 3), '-', 
                    SUBSTR(TLNO, 4, 4), '-', 
                    SUBSTR(TLNO, 8, 4)
                    ) AS '전화번호'
FROM        TEMP
WHERE       review >= 3
ORDER BY    USER_ID DESC 

