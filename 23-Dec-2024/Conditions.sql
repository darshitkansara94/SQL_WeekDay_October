Condition :
	If Else :
		We check the expression / condition and based on that condition 
			compiler decide the execution of code.
		Every condition is return either true or false.
		So, Either If block is excute or else block got execute.
		At a time only single block will get executed.

		-- Syntax :
			If (expression / condition)
			Begin
				-- SQL statement
			End
			Else
			Begin
				-- SQL Statement
			End

		-- Example :
			If (5 > 0) -- True
			Begin
				Print('5 is greater than 0')
			End
			Else
			Begin
				Print('5 is less than or equal to 0')
			End

			If (5 < 0) -- False
			Begin
				Print('5 is greater than 0')
			End
			Else
			Begin
				Print('5 is less than or equal to 0')
			End

			Select * from tbl_CategoryMaster

			-- Declare variable
			Declare @CategoryName nvarchar(50) = 'Monitor'
			Declare @CategoryNameTable nvarchar(50)

			Select @CategoryNameTable = Category_Name from tbl_CategoryMaster
				Where Category_Name = 'Tablet'

			If (@CategoryName = @CategoryNameTable) -- Monitor = Tablet
			Begin
				Print(concat_ws(' ',@CategoryName,'value is exists'))
			End
			Else
			Begin
				Print(concat_ws(' ',@CategoryName,'value is not exists'))
			End

	If Else If Else
		We can write multiple consitions.


		-- Syntax :
			If (expression / condition)
			Begin
				-- SQL Statement
			End
			Else if (expression / condition)
			Begin
				-- SQL Statement
			End
			Else If (expression /  condition)
			Begin
				-- SQL Statement
			End
			Else
			Begin
				-- SQL Statement
			End

		-- Example :
			If (5 > 0)
			Begin
				Print('5 is greater than 0')
			End
			Else If (5 < 0)
			Begin
				Print('5 is less than 0')
			End
			Else If ( 5 = 0)
			Begin
				Print('5 is equal to 0')
			End
			Else
			Begin
				Print('Invalid choice')
			End

			Print('If Condition executed')

			-- Declare variable
			Declare @num1 int = 4
			Declare @num2 int = 5

			If (@num1 > @num2) -- 4 > 5 = False
			Begin
				Print(concat_ws(' ',@num1,'is greater than',@num2))
			End
			Else If (@num1 < @num2) -- 4 < 5 = True
			Begin
				Print(concat_ws(' ',@num1,'is less than',@num2))
			End
			Else If (@num1 = @num2)
			Begin
				Print(concat_ws(' ',@num1,'is equal to',@num2))
			End
			Else
			Begin
				Print('Invalid value')
			End

	Case Condition