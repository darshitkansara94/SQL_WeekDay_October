Ranking Function :
	Dense_Rank() :
		Create sequential number like row_number().
		But Dense_rank() generates duplicate number for the same values.

		-- Syntax :
			Select DENSE_RANK() over(order by column_name asc/desc) as alias_name,
			column1, column2... from tbl_Name

		-- Example :
			Select Category_Id,Category_Name from tbl_CategoryMaster
		
			Select ROW_NUMBER() over(order by Category_Name) as SrNo,Category_Id,Category_Name 
			from tbl_CategoryMaster

			-- With Dnse Rank function
			Select DENSE_RANK() over(order by Category_Name) as SrNo,Category_Id,
			Category_Name
			from tbl_CategoryMaster

			Select DENSE_RANK() over(order by Category_Id) as SrNo,Category_Id,
			Category_Name
			from tbl_CategoryMaster

	-- Partition By :
		Work with ranking functions.
		Provide sequential order to duplicate values and for non duplicate values index start from 1.

		-- Syntax :
			Select ROW_NUMBER() over(partition by column_name order by column_name asc/desc) as SrNo,
			Column1,column2.. from tbl_name

		-- Example :
			Select ROW_NUMBER() over(partition by Category_Name order by Category_Name) as SrNo,
			Category_Id,Category_Name
			from tbl_CategoryMaster

			Select ROW_NUMBER() over(partition by Category_Name,Category_Id order by Category_Name) as SrNo,
			Category_Id,Category_Name
			from tbl_CategoryMaster