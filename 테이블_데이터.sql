CREATE TABLE Customer(
	CustomerId int IDENTITY(1,1) primary key,
	CustomerName varchar(50) not null,
	CustomerAddress varchar(200),
	CustomerSex bit,
	CustomerAge tinyint
)

select * from Customer;

insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('홍길동', '대한민국 서울특별시 마포구', 1, 20)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('김길동', '대한민국 서울특별시 마포구', 0, 21)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('박길동', '대한민국 서울특별시 마포구', 1, 22)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('이길동', '대한민국 서울특별시 마포구', 0, 23)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('최길동', '대한민국 서울특별시 마포구', 1, 24)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('이순신', '경기도', 1, 13)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('김길산', '경상도', 0, 61)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('장길산', '충청도', 1, 52)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('춘향이', '서울시 마포구 신촌동', 0, 43)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('손기명', '경기도 남양주시 별내동', 1, 30)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('이몽룡', '서울시 화곡동', 0, 8)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('노인', '강원도', 0, 78)
insert into Customer (CustomerName, CustomerAddress, CustomerSex, CustomerAge)
values ('신원불상자', NULL, NULL, NULL)