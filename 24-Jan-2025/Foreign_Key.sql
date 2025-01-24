Foreign Key / Reference Key :
	Create a link between two tables.
	Primary key of parent table and column of child table is referenced.

	-- Example 
		--Select * from tbl_CategoryMaster -- Parent Table
		--Select * from tbl_SubCategoryMaster -- Reference Table

	-- Why we need FK?
		To logically connect two tables.
		Remove data first from child table and then only we can delete data from parent table.

	-- Syntax :
		Constraint foreignkey_name Foreign key
			(column_of_child_table)
			references parent_table_name(column_of_parent_table / PK_column)

		-- Add FK into existing table
			Alter table tbl_name
			Add constraint fk_name Foreign Key (column_of_child_table)
				references parent_table(column_of_parent_table / PK_column)

		-- How to remove FK
			Alter table tbl_Name
			Drop constraint fk_name

	-- Example 
		-- Parent Table
		Create table tbl_CategoryMaster
		(
			Category_id int primary key identity(1,1),
			Category_Name nvarchar(20)
		)

		-- Child Table
		Create table tbl_SubcategoryMaster
		(
			Subcategory_Id int primary key identity(1,1),
			Category_Id int,
			Subcategory_Name nvarchar(20),
			Constraint fk_CategoryId Foreign Key(Category_Id)
				References tbl_CategoryMaster(Category_Id)
		)

		Select * from tbl_CategoryMaster
		Select * from tbl_SubCategoryMaster

		Insert into tbl_CategoryMaster(category_Name) values('Phone')

		Insert into tbl_SubCategoryMaster(Category_Id,SubCategory_Name)
		values(null,'Samsung S24')

		-- Delete data from Parent table
		Delete from tbl_CategoryMaster where  Category_Id = 1

		-- Add FK in existing table.
		Alter table tbl_BannerMaster -- Child Table
		Add Constraint fk_CompanyID Foreign Key(Company_Id)
			References tbl_CompanyMaster(Company_Id)

		-- Drop FK
			Alter table tbl_BannerMaster
			Drop constraint fk_CompanyID			