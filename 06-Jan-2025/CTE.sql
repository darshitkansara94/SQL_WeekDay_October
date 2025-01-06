CTE : 
	CTE full name "Common Table Expression".
	CTE creates virtual table at run time and remove that table from memory after 
		execution completed.
	We can not alter CTE.
	CTE is startwith keyword "With".

	-- Syntax :
		With cte_Name as
		(
			Select statement
		)

		-- Get data from CTE
		Select * from cte_Name

	-- Example :
		use ECommerce_DB

		Select * from tbl_CategoryMaster
		Select * from tbl_SubcategoryMaster

		-- CTE with joins
		With cte_ProductData as
		(
			Select cm.Category_Name,sm.Subcategory_Name,sm.SubCategory_Price,
				sm.SubCategory_Quantity
			from tbl_CategoryMaster cm
			Inner join tbl_SubcategoryMaster sm
				On cm.Category_Id = sm.Category_Id
		)

		Select * from cte_ProductData