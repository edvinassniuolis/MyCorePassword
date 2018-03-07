USE [MyCorePassword]
GO
/****** Object:  StoredProcedure [dbo].[CreateUserRoleAttributeTable]    Script Date: 2018.03.07 22:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER procedure [dbo].[CreateUserRoleAttributeTable]
as
begin
	create table [PcUserRoleAttribute](
		[Id] int not null identity(1,1),
		[Attribute] varchar(50) not null,
		primary key([Id])
	);
end