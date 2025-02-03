Alter procedure sp_InsertCategoryTable
(
	@Category_Name as nvarchar(20)
)
As
Begin
	Begin try
		Select 10/0

		Insert into tbl_CategoryMaster(Category_Name)
		values(@Category_Name)
	End try
	Begin catch
		print('Insertion is failed')
	End catch
End