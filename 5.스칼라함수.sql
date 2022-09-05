/*
	��Į�� �Լ�
	- ������ ���� ĳ���� �� ��ȯ�� ����

	�ַ� ���̴� ��Į�� �Լ�
	1. CAST
	CAST(expression AS datatype(length))
	�Ķ����
	- expression ��ȯ�� ������ �ʼ� �׸�
	- datatype �ʼ� �׸�. expression�� ��ȯ�� ������ Ÿ��
	- length ����. ��� ������ Ÿ���� ���̸� ����. ���ڿ��� ���

	2. CONVERT
	CONVERT(data_type[(length)], expression[style])
*/

-- CAST

select * from customer

-- cast�� ����� ����ȯ.
select customerage, cast(customerage as char) as ���ڿ����� from customer

-- convert�� ����� ����ȯ.
select customerage, convert(varchar, customerage) as ���ڿ����� from customer

-- int�� ���ڿ��� �ٲ� �� ������ int�� ������ �߻��� �� �־ �ݵ�� Ȯ���ؾ� �Ѵ�.

-- len() �Լ�
select *, len(customeraddress) from customer -- ������ ���̸� �����´�.

-- left() �Լ�
select *, left(customername, 2) from customer -- ���ʿ��� 2�ڸ��� �����´�.
-- right() �Լ�
select *, right(customername, 2) from customer -- �����ʿ��� 2�ڸ��� �����´�.

-- substring() �Լ�
-- sql�� ���α׷��ְ� �ٸ��� 1���� ���� 0���Ͱ� �ƴϴ�!.
select *, substring(customername, 2, 2) from customer  -- 2��° ���ں��� 2���� ���ڸ� �����´�.

-- replace
-- customername���� ���̶� ���ڸ� �� ���ڿ��� �ٲ۴�.
select *, replace(customername, '��', '') from customer

/*
replicate() �ݺ�
len
customerid�� 5�ڸ��� ������. ex) 00001
*/
select *,
replicate('0',5-len(customerid)) + cast(customerid as varchar)
from customer