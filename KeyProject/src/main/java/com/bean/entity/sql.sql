select * from TB_MEMBER;
select * FROM TB_MATERIAL;

insert into TB_MEMBER (MEM_ID, MEM_PW, MEM_NAME, MEM_PHONE, MEM_ADDRESS)
values('sm1', '123', 'ksk', '999', '서초점');



select MEM_ID, MEM_PW from TB_Member
		where MEM_ID = '1111'
		and MEM_PW = '1111';




SELECT B.ORDER_D_NUMBER AS orderDNumber,
       A.MENU_NAME AS menuName,
       A.MENU_PRICE AS menuPrice,  -- 메뉴 가격 추가
       B.ORDER_D_AMT AS orderDAmt
  FROM TB_MENU A
 INNER JOIN TB_ORDER_D B
    ON A.MENU_CODE = B.ORDER_D_CODE  -- 상품코드로 조인
 WHERE B.ORDER_D_NUMBER = #{orderDNumber}
 
 
 
 

		SELECT A.ORDER_D_NUMBER AS orderDetailNumber, 
			   A.ORDER_D_CODE AS orderDetailCode, 
			   A.ORDER_D_AMT AS orderDetailAmt,
			   A.ORDER_D_PRICE AS orderDetailPrice,
			   C.MENU_NAME AS menuName
		FROM TB_ORDER_D A INNER JOIN TB_ORDER_M B
		ON A.ORDER_D_NUMBER = B.ORDER_M_NUMBER
		INNER JOIN TB_MENU C
		ON A.ORDER_D_CODE = C.MENU_CODE
		WHERE B.MEM_ID = #{memId}
		    AND B.STATUS = '완료';

 
		    
		    	SELECT 
    TO_CHAR(M.ORDER_M_DATE, 'YYYY-MM-DD') AS orderMasterDate, 
    SUM(M.ORDER_M_TOTAL) AS orderMasterTotal
	FROM 
    TB_ORDER_M M
	WHERE 
    M.ORDER_M_DATE >= SYSDATE - 7 AND M.MEM_ID = 'MEM001'
	GROUP BY 
    TO_CHAR(M.ORDER_M_DATE, 'YYYY-MM-DD')
	HAVING 
    SUM(M.ORDER_M_TOTAL) = (
        SELECT MAX(SUM_M)
        FROM (
            SELECT SUM(TB_ORDER_M.ORDER_M_TOTAL) AS SUM_M
            FROM TB_ORDER_M
            WHERE TB_ORDER_M.ORDER_M_DATE >= SYSDATE - 7 AND TB_ORDER_M.MEM_ID = 'MEM001'
            GROUP BY TO_CHAR(TB_ORDER_M.ORDER_M_DATE, 'YYYY-MM-DD')
        )
    );

