/*create table Director(
	Id int not null primary key identity(1,1),
	Name nvarchar(60) not null
)

insert into Director
	(Name)
	values
	('James Cameron')
insert into Director
	(Name)
	values
	('Steven Spielberg')
insert into Director
	(Name)
	values
	('Robert Wise')
insert into Director
	(Name)
	values
	('George Lucas')
insert into Director
	(Name)
	values
	('Victor Fleming')


create table Movie(
	Id int not null primary key identity(1,1),
	Name nvarchar(60) not null,
	ReleaseDate datetime not null,
	DirectorId int not null foreign key references Director(Id),
	GrossAdj bigint not null,
	GrossUn bigint not null
)

insert into Movie
	(Name, ReleaseDate, DirectorId, GrossAdj, GrossUn)
	values
	('Titanic', '1997-12-19', 1, 1129857100, 658672302)
insert into Movie
	(Name, ReleaseDate, DirectorId, GrossAdj, GrossUn)
	values
	('E.T. the Extra-Terrestrial', '1982-06-11', 2, 1183065200, 435110554)
insert into Movie
	(Name, ReleaseDate, DirectorId, GrossAdj, GrossUn)
	values
	('The Sound of Music', '1965-03-29', 3, 1187744200, 158671368)
insert into Movie
	(Name, ReleaseDate, DirectorId, GrossAdj, GrossUn)
	values
	('Star Wars', '1977-05-25', 4, 1485517400, 460998007)
insert into Movie
	(Name, ReleaseDate, DirectorId, GrossAdj, GrossUn)
	values
	('Gone with the Wind', '1940-01-17', 5, 1685052200, 198676459)
*/
select Movie.DirectorId as 'Primary Key', Movie.Name as 'Title', convert(date, ReleaseDate) As 'Release Date', 
GrossAdj as'Gross (Adjusted)', GrossUn as 'Gross (Unadjusted)' from Movie
	join Director
		on Movie.DirectorId = Director.Id
