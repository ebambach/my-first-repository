 /*create table ToDo(
	Id int not null primary key identity(1,1),
	Description nvarchar(255) not null,
	ABC nvarchar(1) not null default 'B',
	Priority int not null default 2,
	DueDate datetime not null default getdate(),
	Complete bit not null default 0
)

--The above table is a to-do list, where "Description" is the task, "ABC" and "Priority" are ways of setting importance, "DueDate" is what it sounds
--like, and "Complete" is whether or not the task is complete.
--The new thing we learned during this activity was that we could add defaults to the fields.

insert into ToDo
	(Description, ABC, Priority, DueDate, Complete)
	values
	('SQL', 'A', 2, getDate(), 0)
insert into ToDo
	(Description, ABC, Priority, DueDate, Complete)
	values
	('Lunch', 'A', 1, getDate(), 0)
insert into ToDo
	(Description, ABC, Priority, DueDate, Complete)
	values
	('SQL', 'A', 2, getDate(), 0)
insert into ToDo
	(Description, ABC, Priority, DueDate, Complete)
	values
	('End of Class', 'B', 1, getDate(), 0)
insert into ToDo
	(Description, ABC, Priority, DueDate, Complete)
	values
	('Commit SQL to repos', 'A', 1, getDate(), 0)
*/
/*create table category(
	code int not null primary key identity(1,1),
	description varchar(25) not null
)

insert into category (description) values ('Personal')
insert into category (description) values ('Business')
*/
/*
 alter table todo
	add categoryCode int
*/
	

--select * from todo
--select * from category

select Description, concat(ABC, Priority) as 'ABC/Priority', DueDate, categoryCode as 'Category', Complete
		
		--CONVERT(date, DueDate)  AS 'Due Date'		--This allows retrieval of the year-month-day without hours :D (If this was the type of data
													--you were working with from the get-go, the data type would be date instead of datetime)
		from ToDo
		--where Complete != 1							--If the assignment is complete, it will not display
		order by DueDate, ABC, Priority
