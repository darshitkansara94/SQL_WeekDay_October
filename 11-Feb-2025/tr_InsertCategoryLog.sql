Alter trigger tr_InsertCategoryLog
On tbl_categoryMaster
For Insert
As
Begin
	Declare @CategoryName nvarchar(20)
	Declare @category_Id int

	--Select @CategoryName = Category_Name from inserted
	--Select @category_Id = Category_Id from inserted

	print(@category_Id)

	--Insert into tbl_CategoryMasterLog(Category_Name,Category_Status,Description)
	--values(@CategoryName,'Active',CONCAT_WS(' ','New category Inserted',@CategoryName))

	Insert into tbl_CategoryMasterLog(Category_Name,Category_Status,Description)
	Select Category_Name,'Active',CONCAT_WS(' ','New category Inserted',Category_Name)
	from inserted
End