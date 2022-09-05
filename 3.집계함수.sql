-- �����Լ�
/* 
	- �� ���տ� ���� ����� �����ϰ� ���� ���� ��ȯ
	- �� �Լ��� SELECT ��� �Ǵ� SELECT ���� HAVING ���� ��� ����
	- GROUP BY ���� �Բ� �� ���ֿ� ���� ���踦 ���
	- Ư�� �� ������ ���� ���踦 ����Ϸ��� OVER ���� ���
	  - OVER ���� GROUPING �Ǵ� GROUPING_ID ���� ������ �� �� ����.
	
	AVG, SUM, COUNT, MIN
*/

select * from customer;
select count(*) as �÷��� from customer;

select count(*) as �÷���, avg(CustomerAge) ��տ���,
max(CustomerAge) �ְ����, min(CustomerAge) �ֿ����� from customer;

-- ���� �߻� �����ռ��� �ƴ� �÷��� ����� �� ����.
select count(*) as �÷���, avg(CustomerAge) ��տ���,
max(CustomerAge) �ְ����, min(CustomerAge) �ֿ�����, CustomerName from customer;

-- hello�� ���� �ǹ̰� ��� �׳� �ϳ� ���پ ��µȴ�.
select count(*) as �÷���, avg(CustomerAge) ��տ���,
max(CustomerAge) �ְ����, min(CustomerAge) �ֿ�����, 'hello' as ��� from customer;

select count(*) as �÷���, avg(CustomerAge) ��տ���,
max(CustomerAge) �ְ����, min(CustomerAge) �ֿ�����,
sum(CustomerAge) �����հ�, sum(CustomerAge) / count(CustomerAge) ��տ���
from customer;

-- ���� �Լ��� GROUP BY�� �Բ� ��� �����̴�~
select customerage, count(*) from customer where customerage is not null group by customerage;
select customerage, count(*) from customer group by customerage having customerage is not null;

select customerage, count(*), sum(customerage) from customer group by customerage;