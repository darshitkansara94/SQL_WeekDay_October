select * from tbl_CategoryMaster where Category_Id = 2

Exec sp_CRUDCategoryMaster
	@Type = 'Insert',
	@Category_Name = 'Laptop'

Exec sp_CRUDCategoryMaster
	@Type = 'Delete',
	@Category_Id = 3

Exec sp_CRUDCategoryMaster
	@Type = 'Select'



	(
		@Category_Id int = 0 -- Default value is 0
	)

	-- @Category_Id = 0

	If (@Category_Id = 0) -- 0 = 0
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

----------------------------------------------------------
Exec sp_CRUDCategoryMaster
	@Type = 'Select',
	@Category_Id = 2


	(
		@Category_Id int = 0 -- Default value is 0
	)

	-- @Category_Id = 2

	If (@Category_Id = 0) -- 2 = 0
		Begin
			Select Category_Id,Category_Name, Created_Date,Modified_Date 
			from tbl_CategoryMaster
		End
		Else
		Begin
			Select Category_Id,Category_Name, Created_Date,Modified_Date 
			from tbl_CategoryMaster where
				Category_Id = 2
		End