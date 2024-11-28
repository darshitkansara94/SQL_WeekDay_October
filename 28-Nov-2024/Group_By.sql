Group By :
	Group by used with Aggregate function. (We can use without aggregate function as well).
	Group by merge the same value column into single column.
	
	-- Syntax :
		Select column1,column2,column3,...,columnN
		 from tbl_name
		Group by column_names

	-- Example :
		Select * from tbl_SubcategoryMaster

		Select SUM(SubCategory_Price) as Price, Subcategory_Name
			from tbl_SubcategoryMaster
		Group by Subcategory_Name

		Insert into tbl_SubcategoryMaster(Subcategory_Id,category_Id,Subcategory_Name,Subcategory_Price)
		values(6,2,'HP','15000')
