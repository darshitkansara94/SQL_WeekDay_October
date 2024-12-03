Joins :
	Get output from combination of two or more than two tables and return result based on that.
	Common column must be there in both the tables.

	-- Types of joins :
		-- Inner join :
			Return common data from both tables.

			-- Syntax :
				Select column1,column2,column3...ColumnN from tbl_name1
				Inner join tbl_name2 on tbl_name1.column_name = tbl_name2.column_name

			-- Example :
				Select * from tbl_CategoryMaster
				Select * from tbl_SubcategoryMaster

				Select tbl_CategoryMaster.Category_Id,tbl_CategoryMaster.Category_Name,
				tbl_SubcategoryMaster.Subcategory_Id ,tbl_SubcategoryMaster.Category_Id,
				tbl_SubcategoryMaster.Subcategory_Name
					from tbl_CategoryMaster
				Inner join tbl_SubcategoryMaster on 
					tbl_CategoryMaster.Category_Id = tbl_SubcategoryMaster.Category_Id

				Select * from tbl_SubcategoryMaster
				Select * from tbl_Brand

				Select tbl_CategoryMaster.Category_Id,tbl_CategoryMaster.Category_Name,
				tbl_SubcategoryMaster.Subcategory_Id ,tbl_SubcategoryMaster.Category_Id,
				tbl_SubcategoryMaster.Subcategory_Name,tbl_Brand.Brand_Name
					from tbl_CategoryMaster
				Inner join tbl_SubcategoryMaster on 
					tbl_CategoryMaster.Category_Id = tbl_SubcategoryMaster.Category_Id 
				Inner join tbl_Brand on 
					tbl_SubcategoryMaster.Subcategory_Id = tbl_Brand.Subcategory_Id
				

		-- Left Join (Outer left join)
		-- Right Join (Outer right join)
		-- Self Join
		-- Outer join	
		

Select * from tbl_CategoryMaster
Select * from tbl_SubcategoryMaster
Select * from tbl_Brand
