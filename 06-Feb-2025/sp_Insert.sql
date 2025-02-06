Alter procedure sp_Insert
(
	@Category_Id int,
	@Category_Name nvarchar(10),
	@SubCategory_Name nvarchar(20)
)
As
Begin
	Begin try
		Begin transaction tr_InsertData
			Insert into tbl_Category(Category_Id,Category_Name)
			values(6, @Category_Name)

			Insert into tbl_SubcategoryMaster(Category_Id,Subcategory_Name)
			values(6,@SubCategory_Name)
		Commit transaction tr_InsertData
	End try
	Begin catch
		print('Operation failed')
		Rollback transaction tr_InsertData
	End catch
End

-- exec sp_Insert 2,'Mobile','Apple 16'

