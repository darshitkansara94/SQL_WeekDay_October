Error Handling :
	To handle run time error we need error handling methods.
	Error handling is done by 'try' and 'catch' block.
	Using error handling user can display custom message.

	-- Syntax :
		Begin try
			-- Logic
		End try
		Begin catch
			-- Error handling code
		End catch

	-- Example :		
		Begin try
			print('Start try block execution')
			Select 10/0
			print('End of execution')
		End try
		Begin catch
			print('Divide by zero is not possible')
		End catch

		exec sp_InsertCategoryTable 'AC'

		Select * from tbl_CategoryMaster