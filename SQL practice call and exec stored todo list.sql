alter procedure ListToDo	--alters the stored procedure ListToDo
	as						--no parameters need to be brought into this
	begin					--let's get started
	select Todo.Description, Category.Description as 'Type', concat(ABC, Priority) as 'ABC/Priority', 
	format(DueDate, 'MM/dd/yyyy hh:mm') as 'Due Date', Complete from ToDo
		join Category							--starts the join
		on Category.Code = ToDo.CategoryCode	--links the foreign key from Category to the primary key in ToDo
	where Complete != 1		--displays tasks that are incomplete
	order by DueDate, ABC	--orders according to Due Date and ABC priority
	end
go							--that was all of the stuff for ListToDo, let's see what the next script does

exec ListToDo --calls the stored procedure ListToDo