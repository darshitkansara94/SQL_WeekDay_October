Joins :
	-- Left Join (Outer left join)
		Return all data from left table and matching data from right table.

		-- Syntax :
			Select column1,column2,column3...,columnN from tbl_1
			Left join tbl_2 on tbl_1.column_name = tbl_2.column_name

			Here in the syntax, tbl_1 is consider as left  table and tbl_2 is consider as 
				right table.

			-- Multiple left join
			Select column1,column2,column3...,columnN from tbl_1
			Left join tbl_2 on tbl_1.column_name = tbl_2.column_name
			Left join tbl_3 on tbl_2.column_name = tbl_3.column_name

			In the syntax, tbl_1 is consider as left  table and tbl_2 is consider as 
				right table.
				For tbl_2 and tbl_3, tbl_2 is consider as left table and 
					tbl_3 is consider as right table.

		-- Example 
			Select * from tbl_CategoryMaster
			Select * from tbl_SubcategoryMaster

			--Insert into tbl_SubcategoryMaster(Subcategory_Id,Category_Id, Subcategory_Name,SubCategory_Price,SubCategory_Quantity,Created_Date,IsDeleted)
			--values(7, 4, 'Apple','50000',45,GETDATE(),0)

			Select tbl_CategoryMaster.Category_Id,tbl_CategoryMaster.Category_Name,tbl_SubcategoryMaster.Subcategory_Id,
				tbl_SubcategoryMaster.Subcategory_Name,tbl_SubcategoryMaster.Category_Id 
			from tbl_CategoryMaster
			Left join tbl_SubcategoryMaster on 
				-- tbl_CategoryMaster.Category_Id = tbl_SubcategoryMaster.Category_Id
				tbl_SubcategoryMaster.Category_Id = tbl_CategoryMaster.Category_Id

			Select tbl_CategoryMaster.Category_Id,tbl_CategoryMaster.Category_Name,tbl_SubcategoryMaster.Subcategory_Id,
			tbl_SubcategoryMaster.Subcategory_Name,tbl_SubcategoryMaster.Category_Id 
			from tbl_SubcategoryMaster
			Left join tbl_CategoryMaster on 
				tbl_SubcategoryMaster.Category_Id = tbl_CategoryMaster.Category_Id

	-- Right Join (Outer right join) :
		Return all the data from  right table and matching data from left table.

		-- Syntax :
			Select column1,column2,..columnN from tbl_1
			Right join tbl_2 on tbl_1.column_name = tbl_2.column_name

			In tbl_1 and tbl_2, tbl_1 is consider as left table and tbl_2 is consider as right table.

		-- Example :
			Select tbl_CategoryMaster.Category_Id,tbl_CategoryMaster.Category_Name,tbl_SubcategoryMaster.Subcategory_Id,
			tbl_SubcategoryMaster.Subcategory_Name,tbl_SubcategoryMaster.Category_Id 
			from tbl_SubcategoryMaster
			Right join tbl_CategoryMaster on 
				tbl_SubcategoryMaster.Category_Id = tbl_CategoryMaster.Category_Id

			Select tbl_CategoryMaster.Category_Id,tbl_CategoryMaster.Category_Name,tbl_SubcategoryMaster.Subcategory_Id,
			tbl_SubcategoryMaster.Subcategory_Name,tbl_SubcategoryMaster.Category_Id 
			from tbl_CategoryMaster
			Right join tbl_SubcategoryMaster on 
				tbl_SubcategoryMaster.Category_Id = tbl_CategoryMaster.Category_Id
			Where Category_Name = 'AC'	