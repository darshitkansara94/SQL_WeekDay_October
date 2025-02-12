alter trigger tr_DeletecategoryMaster
On tbl_CategoryMaster
For Delete
As
Begin
	Insert into tbl_CategoryMasterLog(Category_Name,Category_Status,Description)
	Select Category_Name,'Active',CONCAT_WS(' ','Category Deleted',Category_Id)
	from deleted
End