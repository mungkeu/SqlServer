select * from customer;


-- Simple CASE expression
/*
	SELECT ProductNumber, Category(별칭)=
	 CASE ProductLine
	  WHEN 'R' THEN 'Road'
	  WHEN 'M' THEN 'Mountain'
	  WHEN 'T' THEN 'Touring'
	  WHEN 'S' THEN 'Othre sale items'
	  ELSE 'Not for sale'
	 END, Name
	FROM Production.Product
	ORDER BY ProductNumber
*/
-- 범위 검색에 사용하기 힘들다.
-- Simple CASE expression 실습
select CustomerId, 성별=
case customersex
	when 0 then 'man'
	when 1 then 'woman'
	else '성별내용 없음'
end, customername, customeraddress, Customerage
from customer
	
-- Searched CASE expression
/*
	SELECT ProductNumber, Name, "Price Range" =
	 CASE 
	  WHEN ListPrice = 0 THEN 'Mfg item - not for resale'
	  WHEN ListPrice < 50 THEN 'Under $50'
	  WHEN ListPrice >= 50 and ListPrice < 250 THEN 'Under $250'
	  WHEN ListPrice >= 250 and ListPrice < 1000 THEN 'Under $1000'
	  ELSE 'Over $1000'
	 END
	FROM Production.Product
	ORDER BY ProductNumber
*/
-- Searched CASE expression 실습
select customerid, 나이=
case 
	when customerage < 10 then '어린이'
	when customerage >= 10 and customerage <20 then '10대'
	when customerage >= 20 and customerage <30 then '20대'
	when customerage >= 30 and customerage <40 then '30대'
	when customerage >= 40 and customerage <50 then '40대'
	when customerage >= 50 and customerage <60 then '50대'
	when customerage >= 60 and customerage <70 then '60대'
	when customerage is null then '미확인'
	else '어르신'
end, customername, customeraddress, customersex
from customer 