/*
	순위 함수
	- ROW_NUMBER, DENSE_RANK, RANK, NTILE
	- ROW_NUMBER()
		- 1,2,3,4... 번호를 부여한다.
	SELECT ROW_NUMBER()
	OVER(PARTITION BY COL ORDER BY PRICE DESC) as 가격순위, 
	PID, PNAME, KIND, PRICE, ETC
	FROM PRODUCT
*/

select * from customer;

-- 순위 함수 실습 (row_number())
-- CustomerId가 뒤죽박죽 순서대로가 아닐때라고 가정한다.
-- PARTITION BY 즉 GROUP BY는 생략 가능하다. 그룹핑하지 않고 전체에대해서는 생략한다.
-- 뒤죽박죽인 Id를 출력하지않고 그대신 이름을 기준으로 순위를 만든다.
select row_number() over(order by customername) as 순위,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

-- PARTITION BY를 사용한 순위 함수 실습
-- 남성 여성 신원불상자 각각에 대해서 그룹핑 되어 순위를 매긴다.
select row_number() over(partition by customersex order by customersex desc) as 순위,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

-- 성별 기준으로 정렬 후 이름을 기준으로 정렬한다.
select row_number() over(partition by customersex order by customersex desc, customername) as 순위,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

-- 순위 함수 실습 (DENSE_RANK())
-- 1,2,2,3,4 식으로 순위를 정한다.
select dense_rank() over(order by customersex desc) as 순위,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

select dense_rank() over(order by customeraddress) as 순위,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

-- 순위 함수 실습 (RANK())
-- 1,2,2,4 식으로 순위를 정한다.
select rank() over(order by customersex desc) as 순위,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

select rank() over(order by customeraddress) as 순위,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

-- 순위 함수 실습 (NTILE())
-- NTILE(그룹의 갯수)
-- 정렬 후 몇 개의 그룹으로 나누어서 반환
-- 즉 아래의 구문은 이름으로 정렬 후 2개의 그룹으로 나눈다.
select ntile(2) over(order by customeraddress) as 순위,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

-- 딱 떨어지지 않을 경우 나머지를 처음부터 하나씩 할당
-- 그렇게 때문에 딱 떨어지지 않는 경우 상위 그룹이 갯수가 더 많아진다.