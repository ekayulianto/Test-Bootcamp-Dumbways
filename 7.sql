create table CUSTOMER
(Id int Primary KEY, FirstName varchar(50), Lastname varchar(50), Email nvarchar(50), Addres nvarchar(50), City varchar (50), [state] varchar (50), zip_code INT) 
INSERT INTO CUSTOMER values (1, 'NOVAL', 'AUDI','audinoval@87.gmail.com', 'jl.kajayan', 'Jakarta', 'Indonesia',12349)
INSERT INTO CUSTOMER values (2, 'Dobleh', 'Sudobleh', 'dobleanjay@gmail.com','jl.juod', 'Bandung', 'Indonesia', 12345)
INSERT INTO CUSTOMER values (3, 'Parmin', 'rejo', 'parmin@gmail.com', 'jl.A.yani',' Jakarta', 'Indonesia', 29485)
INSERT INTO CUSTOMER values (4, 'Eka', 'Yulianto','eka@87.gmail.com', 'jl.makmur', 'Jakarta', 'Indonesia',14130)
INSERT INTO CUSTOMER values (5, 'Noval', 'Audi', 'audinoval@87.gmail.com','jl.kajayan', 'Jakarta', 'Indonesia', 12349)
INSERT INTO CUSTOMER values (6, 'Michael', 'Carrick', 'michael@gmail.com', 'jl.A.lama',' Jakarta', 'Indonesia', 18567)
INSERT INTO CUSTOMER values (7, 'Dita', 'Amalia', 'dita09@87.gmail.com','jl.baru', 'Jakarta', 'Indonesia', 14130)
INSERT INTO CUSTOMER values (8, 'Siti', 'Maemunah', 'maemunah@gmail.com', 'jl.subheki',' Bandung', 'Indonesia', 11118)
INSERT INTO CUSTOMER values (9, 'Eka', 'Yulianto','eka@87.gmail.com', 'jl.makmur', 'Jakarta', 'Indonesia',14130)
INSERT INTO CUSTOMER values (10, 'NOVAL', 'AUDI','audinoval@87.gmail.com', 'jl.kajayan', 'Jakarta', 'Indonesia',12349)

select * from CUSTOMER


CREATE TABLE Orders
(id INT Primary Key, Customer_id INT foreign key references Customer(Id), Order_placed_date datetime)
insert into Orders values (1, 6,'20190110')
insert into Orders values (2, 3,'20190503')
insert into Orders values (3, 1,'20190202')
insert into Orders values (4, 2,'20190527')
insert into Orders values (5, 7,'20190130')
insert into Orders values (6, 8,'20190706')
insert into Orders values (7, 10,'20190330')
insert into Orders values (8, 4,'20190908')
insert into Orders values (9, 5,'20191009')
insert into Orders values (10, 9,'20190410')


select * from Customer
select * from Orders



select Email, count(B.Customer_id) as Number_of_Transactions from Customer A
join Orders B on A.id = B.Customer_id
group by Email
order by Number_of_Transactions DESC

