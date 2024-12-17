-- Update data using store procedure

Alter procedure sp_UpdateCategory
(
	@Category_Id int,
	@Category_Name nvarchar(50),
	@Company_Id int,
	@User_Id int,
	@ISActive int
)
As
Begin
	Update tbl_CategoryMaster set
		Category_Name = @Category_Name,Company_Id = @Company_Id, Created_Date = GETDATE(),
		User_Id = @User_Id, IsActive = @ISActive
	Where Category_Id = @Category_Id
End

------------- Execute SP
exec sp_UpdateCategory 3,'Laptop',1,1,1

Select * from tbl_CategoryMaster