-- 중고 거래 게시판 정보를 담은         - USED_GOODS_BOARD
-- 중고 거래 게시판 사용자 정보를 담은    - USED_GOODS_USER

-- 1. 완료된 중고 거래의 총금액이 70만 원 이상인 사람 - [ WHERE, HAVING ] 
-- 2. 회원 ID, 닉네임, 총거래금액 - [ SELECT ]
-- 3. 총거래금액을 기준으로 오름차순 정렬 - [ ORDER BY ] 


SELECT      G.WRITER_ID
            ,U.NICKNAME
            ,SUM(G.PRICE) AS TOTAL_SALES

FROM        USED_GOODS_BOARD G  INNER JOIN USED_GOODS_USER U
ON          G.WRITER_ID = U.USER_ID

WHERE       G.STATUS = 'DONE'
GROUP BY    G.WRITER_ID
HAVING      TOTAL_SALES >= 700000
ORDER BY    TOTAL_SALES ASC