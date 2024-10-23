Table :
	Table contains rows and columns.
	Every table is contain some data.
	We can not create a table with the same name in the same DB.

	-- Rules for create table:
		Table name can not start with special char.
		Space is not allowed in table name. 
		If you want to seperate two words you can use '_' instead of space.
		Prefix of the table name is always start with "tbl_". And first char after tbl_ should be in caps.
			Ex : If you are creating Employee table then name should be : tbl_Employee

	-- Rules for Create columns:
		Column name can not start with special char.
		Space is not allowed in table name. 
		If you want to seperate two words you can use '_' instead of space.
		Table name should be prefix for the column name followed by '_'.
			Ex : We have a tbl_Employee, So our column name should be Employee_Name, Employee_Age

	-- Syntax
		Create table table_name
		(
			column1 datatype,
			column2 datatype,
			column3 datatype,
			.
			.
			.
			columnN datatype
		)

	-- Example
		Create table with the name Category
			Category Id with integer
			Category Name with nvarchar 
			Create Date with datetime
			IsDelete with bit

		Use ECommerce_DB		

		Create table tbl_Category
		(
			Category_Id int,
			Category_Name nvarchar(50),
			Category_CreatedDate datetime,
			IsDeleted bit
		)

		-- Remove table from database
			
			-- Syntax
				Drop table table_name

			-- Example
				Drop table tbl_Category

			-- Rename table
				-- Syntax :
					Exec sp_rename 'Old_tableName','New_Tablename'
				-- Example
					Exec sp_rename 'tbl_Category','tbl_CategoryMaster'

			-- Rename column name
				-- Syntax :
					Exec sp_rename 'old_columnname','New_ColumnName','Column'

				-- Example :
					Exec sp_rename 'tbl_CategoryMaster.IsDeleted','Category_IsDeleted','Column'



