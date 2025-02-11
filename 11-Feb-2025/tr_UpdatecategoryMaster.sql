Alter trigger tr_UpdatecategoryMaster
on tbl_CategoryMaster
For update
As
Begin
	Insert into tbl_CategoryMasterLog(Category_Name,Category_Status,Description)
	Select Category_Name,'Active',CONCAT_WS(' ','Category Updated',Category_Id)
	from inserted
End