/*
	스칼라 함수
	- 데이터 형식 캐스팅 및 변환을 지원

	주로 쓰이는 스칼라 함수
	1. CAST
	CAST(expression AS datatype(length))
	파라메터
	- expression 변환될 값으로 필수 항목
	- datatype 필수 항목. expression이 변환될 데이터 타입
	- length 선택. 결과 데이터 타입의 길이를 지정. 문자열에 사용

	2. CONVERT
	CONVERT(data_type[(length)], expression[style])
*/

-- CAST

select * from customer

-- cast를 사용해 형변환.
select customerage, cast(customerage as char) as 문자열나이 from customer

-- convert를 사용해 형변환.
select customerage, convert(varchar, customerage) as 문자열나이 from customer

-- int는 문자열로 바꿀 수 있지만 int는 에러가 발생할 수 있어서 반드시 확인해야 한다.

-- len() 함수
select *, len(customeraddress) from customer -- 문자의 길이를 가져온다.

-- left() 함수
select *, left(customername, 2) from customer -- 왼쪽에서 2자리를 가져온다.
-- right() 함수
select *, right(customername, 2) from customer -- 오른쪽에서 2자리를 가져온다.

-- substring() 함수
-- sql은 프로그래밍과 다르게 1부터 시작 0부터가 아니다!.
select *, substring(customername, 2, 2) from customer  -- 2번째 문자부터 2개의 문자를 가져온다.

-- replace
-- customername에서 동이란 문자를 다 빈문자열로 바꾼다.
select *, replace(customername, '동', '') from customer

/*
replicate() 반복
len
customerid를 5자리로 만들어라. ex) 00001
*/
select *,
replicate('0',5-len(customerid)) + cast(customerid as varchar)
from customer