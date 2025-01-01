View :
	View is virtual table which store in SQL server memory.
	We can not see that table. But we can access view.
	After creation view we can modify or delete that view and based on operation 
		our view got modified.
	View is use to short the SQL statement and reusability of code in multiple
		SQL statement.
	We can create view for Select statement.

	-- Syntax :
		Create view vw_name as
		Select Statement

	-- Example :
		Create view vw_BrandMaster as
		Select * from tbl_Brand

		-- How to access view
		Select * from vw_BrandMaster

		Select Brand_Name,Brand_Id from vw_BrandMaster

		-- How to modify existing view :
			Alter view vw_BrandMaster as
			Select Brand_Id,Brand_Name from tbl_Brand

			Select Brand_Name from vw_BrandMaster
			Where Brand_Id = 1

		Select * from tbl_CategoryMaster
		select * from tbl_SubcategoryMaster

		Alter view vw_CategoryAndSubCategoryMaster as
			Select tbl_CategoryMaster.Category_Name,tbl_SubcategoryMaster.Subcategory_Name,
			tbl_SubcategoryMaster.SubCategory_Price,tbl_SubcategoryMaster.SubCategory_Quantity,
			tbl_SubcategoryMaster.Created_Date, tbl_SubcategoryMaster.Subcategory_Id
			from tbl_CategoryMaster
			Inner join tbl_SubcategoryMaster on
				tbl_CategoryMaster.Category_Id = tbl_SubcategoryMaster.Category_Id			



		Select * from vw_CategoryAndSubCategoryMaster
		inner join tbl_OrderMaster on
			tbl_OrderMaster.Subcategory_Id = vw_CategoryAndSubCategoryMaster.Subcategory_Id
		order by Category_Name