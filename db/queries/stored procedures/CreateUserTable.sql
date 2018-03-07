use [MyCorePassword]
go

create procedure CreateUserTable
as
begin
	create table [PcUser](
		[Id] int not null identity(1,1),
		[Name] varchar(50) not null,
		[SurName] varchar(50) not null,
		[MasterPassword] varchar(50) not null,
		[RoleId] int not null,
		primary key([Id]),
		foreign key([RoleId]) references [PcUserRole](Id) 
	);
end