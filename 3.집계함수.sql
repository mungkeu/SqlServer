-- 집계함수
/* 
	- 값 집합에 대한 계산을 수행하고 단일 값을 반환
	- 이 함수는 SELECT 목록 또는 SELECT 문의 HAVING 절에 사용 가능
	- GROUP BY 절과 함께 행 범주에 대한 집계를 계산
	- 특정 값 범위에 대한 집계를 계산하려면 OVER 적을 사용
	  - OVER 절은 GROUPING 또는 GROUPING_ID 집계 다음에 올 수 없다.
	
	AVG, SUM, COUNT, MIN
*/

select * from customer;
select count(*) as 컬럼수 from customer;

select count(*) as 컬럼수, avg(CustomerAge) 평균연령,
max(CustomerAge) 최고령자, min(CustomerAge) 최연소자 from customer;

-- 에러 발생 집계합수가 아닌 컬럼은 사용할 수 없다.
select count(*) as 컬럼수, avg(CustomerAge) 평균연령,
max(CustomerAge) 최고령자, min(CustomerAge) 최연소자, CustomerName from customer;

-- hello의 경우는 의미가 없어서 그냥 하나 더붙어서 출력된다.
select count(*) as 컬럼수, avg(CustomerAge) 평균연령,
max(CustomerAge) 최고령자, min(CustomerAge) 최연소자, 'hello' as 상수 from customer;

select count(*) as 컬럼수, avg(CustomerAge) 평균연령,
max(CustomerAge) 최고령자, min(CustomerAge) 최연소자,
sum(CustomerAge) 연령합계, sum(CustomerAge) / count(CustomerAge) 평균연령
from customer;

-- 집계 함수는 GROUP BY와 함께 써야 제맛이다~
select customerage, count(*) from customer where customerage is not null group by customerage;
select customerage, count(*) from customer group by customerage having customerage is not null;

select customerage, count(*), sum(customerage) from customer group by customerage;