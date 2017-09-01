/* create table Customer(
	Id int not null primary key identity(1,1),
	Name nvarchar(60) not null,
	SalesYTD money not null default 0
) */

select Customer.Name, Customer.SalesYTD, ABC from Customer --we could have defined this group as ABC = A by typing "select *, 'A' as 'ABC' from customer" had the field not been set
	where Customer.SalesYTD > 1000000000
union
select Customer.Name, Customer.SalesYTD, ABC from Customer
	where Customer.SalesYTD <= 1000000000 and Customer.SalesYTD > 50000
union
select Customer.Name, Customer.SalesYTD, ABC from Customer
	where Customer.SalesYTD <= 50000
order by ABC