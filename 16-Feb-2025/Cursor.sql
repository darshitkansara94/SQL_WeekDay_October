Cursor :
	Cursor is iterable operation which is allow user to fetch every row from the table.
	Cursor fetch row by row data from table.
	Compare to other SQL statements cursor is slow in performance.
	Do not use cursor if you have large database. Only use in small DB.

	-- Syntax :
		Declare cursor_name Cursor
			for Select_statement
			Open cursor_name
				fetch next from cursor_name into variable
			Close cursor_name

		Deallocate cursor_name

	-- Example
		Select * from tbl_CategoryMaster

		-- Single value return
		Declare @Category_Name nvarchar(20)

		Declare cr_Category cursor
			for Select Category_Name from tbl_CategoryMaster
			Open cr_Category
				fetch next from cr_Category into @Category_Name

				print(@Category_Name)
			Close cr_Category

		Deallocate cr_Category

		-- Multiple value with cursor
		Declare @Category_name nvarchar(20)

		Declare cr_Category cursor
			for Select Category_Name from tbl_CategoryMaster
				Open cr_Category
					fetch next from cr_Category into @Category_Name
					print(@Category_Name)

					while @@FETCH_STATUS = 0
					Begin
						fetch next from cr_Category into @Category_Name
						
						print(@Category_Name)
					End

				Close cr_Category

		Deallocate cr_Category

		-- Multiple columns
		Declare @Category_Id int
		Declare @Category_Name nvarchar(20)

		Declare cr_CategoryMaster cursor
			for Select Category_Id,Category_Name from tbl_CategoryMaster
				open cr_CategoryMaster
					fetch next from cr_CategoryMaster into @Category_Id,@Category_Name
					print(concat_ws(' ',@Category_Id,@Category_Name))

					while @@FETCH_STATUS = 0
					Begin
						fetch next from cr_CategoryMaster into @Category_Id,@Category_Name
						print(concat_ws(' ',@Category_Id,@Category_Name))
					End
				Close cr_CategoryMaster
		Deallocate cr_CategoryMaster