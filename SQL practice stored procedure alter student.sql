--this is a stored procedure that selects the information from the Student table, which is done with "exec ListStudent"

alter procedure ListStudent
as
begin
	select concat(FirstName, ' ', LastName) as 'Full Name', GPA, SAT, Description as 'Major' from Student
		left join Major
		on Student.MajorId = Major.Id
end