/*Update Student set
	State = 'IN'
	Where Id = 6

select major.description as 'Major', student.state,
	concat(student.firstname, ' ', student.lastname) as 'FullName' from major
	join student
		on student.majorid = major.id
	
	order by major.description
*/

--alter table Student
	--add foreign key (State) references State(Code)

select concat(s.Firstname, ' ', s.Lastname) as 'Full Name',
	--concat(s.City, ', ', st.Name) as 'City and State',
	--^Combines the City from the Student table, and the State's Name from the State table.
	--m.description as 'Major',
	--^The major description from the major table
	SAT,
	GPA
	 from student as s
	join major as m
		on s.majorid = m.id
	join State as st
		on s.State = St.Code
	--where SAT > 1200
	where GPA = (select max(GPA) from Student) --where GPA >= 3.5)
	--^By putting the select to calculate the avg GPA in (), we are able to have SQL do that first, then have the "where" use that information
	order by St.Name

--select * from Major

/*create table Major(
Id int not null primary key identity(1,1),
Description NVARchar(50) not null
)*/

/*insert into Major (Description) values ('Audiology')
insert into Major (Description) values ('Biology')
insert into Major (Description) values ('CS')
insert into Major (Description) values ('IPS')
insert into Major (Description) values ('Linguistics')
insert into Major (Description) values ('ME')*/

--Delete from Student

--alter table Student
--	Add MajorId int not null

/*insert into Student (FirstName, LastName, Address, City, State, Zipcode, PhoneNumber, Email, Birthday, MajorId)
	values
	('Ken', 'Doud', '123 Anywhere Street', 'Loveland', 'OH', '45140', '5137037315', 'kdoud@maxtrain.com', '1991-08-27', '4');*/
/*insert into Student (FirstName, LastName, Address, City, State, Zipcode, PhoneNumber, Email, Birthday, MajorId)
	values
	('Eric', 'Bambach', '330 Oakwood Park Drive', 'Cincinnati', 'OH', '45238', '5139679709', 'bambache@gmail.com', '1987-11-29', '1');*/