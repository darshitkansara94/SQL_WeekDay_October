-- Insert using param with default values

Alter procedure sp_InsertCategoryWithParam
(
	@Category_Name nvarchar(50) = 'No value Inserted',
	@Company_Id int = 0,
	@User_Id int = null,
	@ISActive int = 0
)
As
Begin
	Insert into tbl_CategoryMaster(Category_Name,Company_Id,Created_Date,User_Id,IsActive)
	values(@Category_Name,@Company_Id,GETDATE(),@User_Id,@ISActive)

	Select Category_Name,Company_Id,Created_Date,User_Id,IsActive from tbl_CategoryMaster
End

Exec sp_InsertCategoryWithParam 'Mobile',null,null,1

Exec sp_InsertCategoryWithParam 'Mobile','','',1

Exec sp_InsertCategoryWithParam
	@Category_Name = 'PC',
	@ISActive = 1

Select * from tbl_CategoryMaster