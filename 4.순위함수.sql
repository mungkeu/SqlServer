/*
	���� �Լ�
	- ROW_NUMBER, DENSE_RANK, RANK, NTILE
	- ROW_NUMBER()
		- 1,2,3,4... ��ȣ�� �ο��Ѵ�.
	SELECT ROW_NUMBER()
	OVER(PARTITION BY COL ORDER BY PRICE DESC) as ���ݼ���, 
	PID, PNAME, KIND, PRICE, ETC
	FROM PRODUCT
*/

select * from customer;

-- ���� �Լ� �ǽ� (row_number())
-- CustomerId�� ���׹��� ������ΰ� �ƴҶ���� �����Ѵ�.
-- PARTITION BY �� GROUP BY�� ���� �����ϴ�. �׷������� �ʰ� ��ü�����ؼ��� �����Ѵ�.
-- ���׹����� Id�� ��������ʰ� �״�� �̸��� �������� ������ �����.
select row_number() over(order by customername) as ����,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

-- PARTITION BY�� ����� ���� �Լ� �ǽ�
-- ���� ���� �ſ��һ��� ������ ���ؼ� �׷��� �Ǿ� ������ �ű��.
select row_number() over(partition by customersex order by customersex desc) as ����,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

-- ���� �������� ���� �� �̸��� �������� �����Ѵ�.
select row_number() over(partition by customersex order by customersex desc, customername) as ����,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

-- ���� �Լ� �ǽ� (DENSE_RANK())
-- 1,2,2,3,4 ������ ������ ���Ѵ�.
select dense_rank() over(order by customersex desc) as ����,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

select dense_rank() over(order by customeraddress) as ����,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

-- ���� �Լ� �ǽ� (RANK())
-- 1,2,2,4 ������ ������ ���Ѵ�.
select rank() over(order by customersex desc) as ����,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

select rank() over(order by customeraddress) as ����,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

-- ���� �Լ� �ǽ� (NTILE())
-- NTILE(�׷��� ����)
-- ���� �� �� ���� �׷����� ����� ��ȯ
-- �� �Ʒ��� ������ �̸����� ���� �� 2���� �׷����� ������.
select ntile(2) over(order by customeraddress) as ����,
CustomerName, CustomerAddress, CustomerSex, CustomerAge from customer;

-- �� �������� ���� ��� �������� ó������ �ϳ��� �Ҵ�
-- �׷��� ������ �� �������� �ʴ� ��� ���� �׷��� ������ �� ��������.