Order By :
	Order by sorting the rows / data into ascending or descending order.
	Order by execution is not affected to actual table.
	To display data in ascending order we have 'ASC' keyword
	To display data in descending order we have 'DESC' keyword.
	By default orde is 'ASC' if we are not mention anything in order by clause.
	We can apply order by on any type of column.

	-- Syntax :
		-- Default order is ASC
		Select column1,column2,column3,...,columnN
		 from tbl_name 
		Order by column_name 

		-- With order
		Select Column1.column2,column3,....,columnN
			from  tbl_Name
		Order by column_Name asc/desc

	-- Example :
		Select Category_Id,category_Name,Modified_Date,Created_Date ,IsDeleted
			from tbl_CategoryMaster

		Select Category_Id,category_Name,Modified_Date,Created_Date ,IsDeleted
			from tbl_CategoryMaster
		Order by Category_Name

		Select Category_Id,category_Name,Modified_Date,Created_Date ,IsDeleted
			from tbl_CategoryMaster
		Order by Category_Name desc

		Select Category_Id,category_Name,Modified_Date,Created_Date ,IsDeleted
			from tbl_CategoryMaster
		Order by Category_Id desc

		Select category_Name,Modified_Date,Created_Date ,IsDeleted
			from tbl_CategoryMaster
		Order by Category_Id desc