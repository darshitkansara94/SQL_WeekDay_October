Ranking functions :
	Ranking function provide a senqualtial number in output of select statement.

	Types of Ranking function :
		1. Row_Number() :
			Provide a number in sequential order.

			-- Syntax :
				Select ROW_NUMBER() Over(Order by column_name asc/desc) as alias_name,
				column1,column2,column3.. from tbl_name

			-- Example :
				Select * from tbl_CategoryMaster

				Select ROW_NUMBER() over(Order by Category_Name) as SRNo,
					Category_Id,Category_Name
				from tbl_CategoryMaster

				-- Errored query
				Select ROW_NUMBER() over(Order by Category_Name) as SRNo,
					Category_Id,Category_Name
				from tbl_CategoryMaster
				where SRNo = 2

				Create view vw_Categorydata as
				Select ROW_NUMBER() over(Order by Category_Name) as SRNo,
					Category_Id,Category_Name
				from tbl_CategoryMaster

				Select * from vw_Categorydata where SRNo = 2


		2. Dense_Rank()