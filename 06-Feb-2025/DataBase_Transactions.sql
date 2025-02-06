Database Transactions :
	Commit :
		When we want to add data into table permenant then we have to use commit.
		Once commit is done then we can not rollback / reverse the data from the table.

		-- Syntax :
			Begin transaction transaction_name
				Statement (Insert/Update/Delete)
			Commit transaction transaction_name

		-- Example :
			Insert into tbl_CategoryMaster(Category_Name)
			values('Laptop')

			Begin transaction tr_InsertCategory
				Insert into tbl_CategoryMaster(Category_Name) values('Watch')
			Commit transaction tr_InsertCategory

			Select * from tbl_CategoryMaster

	Rollback :
		Reverse the transction from the table.
		Once commit in done we can not do rollback.

		-- Syntax :
			Begin transaction tr_Name
				SQL statement (Insert / Update / Delete)
			Rollback transaction tr_Name