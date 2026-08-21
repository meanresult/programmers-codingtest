-- 컬럼명은 '진료과 코드', '5월예약건수'로 지정 - SELECT / AS 
-- 2022년 5월에 예약한 환자 - WHERE 
-- 진료과코드 별로 조회 - GROUP 
-- 진료과별 예약한 환자 수를 기준으로 오름차순 정렬 ORDER BY 예약한 환자 수 ASC, 진료과 코드 ASC 

SELECT      MCDP_CD AS '진료과코드',
            COUNT(*) AS '5월예약건수'
FROM        APPOINTMENT
WHERE       LEFT(APNT_YMD,7) = '2022-05'
GROUP BY    MCDP_CD
ORDER BY    5월예약건수 ASC,
            진료과코드 ASC
