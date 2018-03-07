use [MyCorePassword]
go

create procedure CreateGivenTables
					@ExistFlag int
as
begin
	if (@ExistFlag = 1)
		begin
			exec [dbo].[CreateUserRoleAttributeTable]	
			exec [dbo].[CreateUserRoleTable]	
			exec [dbo].[CreateUserTable]
		end
	else
		begin
			EXEC sp_msforeachtable "ALTER TABLE ? NOCHECK CONSTRAINT all"
			EXEC sp_MSforeachtable @command1 = "DROP TABLE ?"
		end
end