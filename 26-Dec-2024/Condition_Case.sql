Condition :
	Case Condition :
		We can use condition inside select statement.
		Better performance in compare to Ifelse and If else if condition.

		-- Syntax :
			-- Single condition
			Select 
				Case 
					When condition then 'output'
					Else 'output' End as alias_name

			-- Multiple condition
			Select 
				Case
					When condition Then 'Output'
					When condition Then 'output'
					.
					.
					When condition Then 'output'
				Else 'output' End as alias_name

		-- Example :
			Select Case When 5 > 0 Then '5 is greater than 0'
				Else '5 is less than or equal to 0' End as Compare

			-- Compare multiple condition
			Declare @num as int = 0
			Select Case	
				When @num > 0 Then CONCAT_WS(' ',@num,'is greater than 0')
				when @num < 0 Then CONCAT_WS(' ',@num,'is less than 0')
				Else CONCAT_WS(' ',@num,'is equal to 0') 
			End as Compare

			-- Eaxample :
				-- Criteria :
					-- 90 - 100 = 'Grade A'
					-- 75 - 89 = 'Grade B'
					-- 55 - 74 = 'Grade C'
					-- 45 - 54 = 'Grade D'
					-- 35 - 44 = 'Grade E'
					-- Less than 35 = 'Grade F'

			Declare @Marks as int = 89
			Select Case
				When @Marks >= 90 And @Marks <= 100 Then 'Grade A'
				When @Marks >= 75 And @Marks <= 89 Then 'Grade B'
				When @Marks >= 55 And @Marks <= 74 Then 'Grade C'
				When @Marks >= 45 And @Marks <= 54 Then 'Grade D'
				When @Marks >= 35 And @Marks <= 44 Then 'Grade E'
				Else 'Grade F'
			End as Marks

			Declare @Marks1 as int = 89
			Select Case
				When @Marks1 Between 90 And 100 Then 'Grade A'
				When @Marks1 Between 75 And 89 Then 'Grade B'
				When @Marks1 Between 55 And 74 Then 'Grade C'
				When @Marks1 Between 45 And 54 Then 'Grade D'
				When @Marks1 Between 35 And 44 Then 'Grade E'
				Else 'Grade F'
			End as Marks
