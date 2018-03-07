use [MyCorePassword]
go

create procedure CreateUserRoleTable
as
begin
	create table [PcUserRole](
		[Id] int not null identity(1,1),
		[RoleAttributeId] int not null,
		primary key([Id]),
		foreign key([RoleAttributeId]) references [PcUserRoleAttribute](Id)
	);
end