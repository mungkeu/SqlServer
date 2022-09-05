select * from customer;


-- Simple CASE expression
/*
	SELECT ProductNumber, Category(��Ī)=
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
-- ���� �˻��� ����ϱ� �����.
-- Simple CASE expression �ǽ�
select CustomerId, ����=
case customersex
	when 0 then 'man'
	when 1 then 'woman'
	else '�������� ����'
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
-- Searched CASE expression �ǽ�
select customerid, ����=
case 
	when customerage < 10 then '���'
	when customerage >= 10 and customerage <20 then '10��'
	when customerage >= 20 and customerage <30 then '20��'
	when customerage >= 30 and customerage <40 then '30��'
	when customerage >= 40 and customerage <50 then '40��'
	when customerage >= 50 and customerage <60 then '50��'
	when customerage >= 60 and customerage <70 then '60��'
	when customerage is null then '��Ȯ��'
	else '���'
end, customername, customeraddress, customersex
from customer 