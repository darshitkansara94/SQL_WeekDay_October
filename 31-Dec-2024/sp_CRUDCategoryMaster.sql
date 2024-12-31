-- I will create one SP for CRUD operation

Alter procedure sp_CRUDCategoryMaster
(
	@Type nvarchar(15),
	@Category_Id int = 0,
	@Category_Name nvarchar(10)	= null
)
As
Begin
	If (@Type = 'Insert')
	Begin
		Insert into tbl_CategoryMaster(Category_Name,Modified_Date,Created_Date)
		values(@Category_Name,null,GETDATE())
	End
	Else if (@Type = 'Update')
	Begin
		Update tbl_CategoryMaster set
			Category_Name = @Category_Name,
			Modified_Date = GETDATE()
		where Category_Id = @Category_Id
	End
	Else if (@Type = 'Delete')
	Begin
		Delete from tbl_CategoryMaster where Category_Id = @Category_Id
	End
	Else If (@Type = 'Select')
	Begin
		Print(@Category_Id)
		If (@Category_Id = 0)
		Begin
			Select Category_Id,Category_Name, Created_Date,Modified_Date 
			from tbl_CategoryMaster
		End
		Else
		Begin
			Select Category_Id,Category_Name, Created_Date,Modified_Date 
			from tbl_CategoryMaster where
				Category_Id = @Category_Id
		End
	End
End