Subquery :
	Subquery is about query inside query.
	It also consider as nested query.
	We can not define multiple columns into subquery.

	-- Syntax :
		Select column1,column2 from tbl_name
			where column_Name in (Select column_name from tbl_Name)

	-- Example :
		Select * from tbl_CategoryMaster
		Select * from tbl_SubCategoryMaster

		Select Category_Id,Category_Name 
			from tbl_CategoryMaster
		where 
			Category_Id not in (Select Category_Id from tbl_SubCategoryMaster)

		Select Category_Id,Category_Name 
			from tbl_CategoryMaster
		where 
			Category_Id in (Select Category_Id from tbl_SubCategoryMaster)

		Select * from tbl_CategoryMaster
		Select * from tbl_SubCategoryMaster

		--delete from tbl_SubCategoryMaster where Category_Id = 2		

		Select Category_Id,Category_Name 
			from tbl_CategoryMaster
		where exists (Select Category_Id from tbl_SubCategoryMaster)
			-- Category_Id in (Select Category_Id from tbl_SubCategoryMaster)

		--If exists (Select category_id from tbl_SubCategoryMaster)
		--Begin
		--	Update
		--End
		--Else
		--Begin
		--	Insert
		--End
