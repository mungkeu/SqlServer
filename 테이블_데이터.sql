CREATE TABLE Customer(
	CustomerId int IDENTITY(1,1) primary key,
	CustomerName varchar(50) not null,
	CustomerAddress varchar(200),
	CustomerSex bit,
	CustomerAge tinyint
)

select * from Customer;

insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('ȫ�浿', '���ѹα� ����Ư���� ������', 1, 20)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('��浿', '���ѹα� ����Ư���� ������', 0, 21)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('�ڱ浿', '���ѹα� ����Ư���� ������', 1, 22)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('�̱浿', '���ѹα� ����Ư���� ������', 0, 23)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('�ֱ浿', '���ѹα� ����Ư���� ������', 1, 24)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('�̼���', '��⵵', 1, 13)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('����', '���', 0, 61)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('����', '��û��', 1, 52)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('������', '����� ������ ���̵�', 0, 43)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('�ձ��', '��⵵ �����ֽ� ������', 1, 30)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('�̸���', '����� ȭ�', 0, 8)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('����', '������', 0, 78)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('�ſ��һ���', NULL, NULL, NULL)