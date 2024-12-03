Where Clause :
	Where clause is use to filter the data.
	We can use where clause in select statement.

	-- Syntax :
		Select column1,column2,column3..., ColumnN from tbl_name
		where column_name = 'expression'

	-- Example :
		Select Category_Id,Category_Name,Created_Date,IsDeleted 
			from tbl_CategoryMaster
		Where Category_Name = 'ac' or Category_Name = 'television'

	-- Where clause with multiple condition :
		-- And
			If all the condition is true then only output will be return else empty result display.

			-- Syntax :
				Select column1,column2,column3..., ColumnN from tbl_name
				where column_name = 'expression' AND column_Name = 'expression' AND column_name = 'expression'..

			-- Example :
				Select Category_Id,Category_Name,Created_Date,IsDeleted 
					from tbl_CategoryMaster
				Where Category_Name = 'ac' AND Category_Id = 2

				Select Category_Id,Category_Name,Created_Date,IsDeleted 
					from tbl_CategoryMaster

				Select Category_Id,Category_Name,Created_Date,IsDeleted 
					from tbl_CategoryMaster
				Where Category_Name = 'Fridge' AND Category_Id = 3
		-- OR
			If any single condition is true then statement will return result.

			-- Syntax :
				Select column1,column2,column3..., ColumnN from tbl_name
				where column_name = 'expression' OR column_Name = 'expression' OR column_name = 'expression'..

			-- Example :
				Select Category_Id,Category_Name,Created_Date,IsDeleted 
					from tbl_CategoryMaster
				Where Category_Name = 'ac' OR Category_Id = 2 

				Select Category_Id,Category_Name,Created_Date,IsDeleted 
					from tbl_CategoryMaster

				Select Category_Id,Category_Name,Created_Date,IsDeleted 
					from tbl_CategoryMaster
				Where Category_Name = 'AC' OR Category_Id = 3

				Select Category_Id,Category_Name,Created_Date,IsDeleted 
					from tbl_CategoryMaster

				Select Category_Id,Category_Name,Created_Date,IsDeleted 
					from tbl_CategoryMaster
				Where Category_Name = 'Fridge' OR Category_Id = 3

				-- Use And and Or operator in single select statement.
				Select Category_Id,Category_Name,Created_Date,IsDeleted 
					from tbl_CategoryMaster
				Where 
					(Category_Name = 'AC' or Category_Name = 'Tablet') And Category_Id = 3