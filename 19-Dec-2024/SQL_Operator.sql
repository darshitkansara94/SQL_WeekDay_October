SQL Operator :
	Oprator is used to compare  / filter value from SQL statement.

	Comparision Operator :
		Equal (=):
			Compare two values and return true if both the values are same if not then return false.

			-- Example :
				Select * from tbl_CategoryMaster
					where Category_Id = 4

		Not Equal (!=) :
			Return value except mention in condition.

			-- Example :
				Select * from tbl_CategoryMaster
					where Category_Id != 1002

				Select * from tbl_CategoryMaster
					where Category_Id <> 1002

		Greater than :
			Return greater values than mention in condition.

			-- Example :
				Select * from tbl_CategoryMaster
					where Category_Id > 3

		Greater than or Equal (>=) :
			Return greater values than mention in condition or equal value.

		-- Example :
				Select * from tbl_CategoryMaster
					where Category_Id >= 3

		Less than (<):
			Return lesser values than mention in condition.

			--Example :
				Select * from tbl_CategoryMaster
					where Category_Id < 3

		Less than or Equal :
			Return lesser values than mention in condition or equal value.

		-- Example :
				Select * from tbl_CategoryMaster
					where Category_Id <= 3

	Logical Operator :
		And :
			Return a value if all conditions are true otherwise return empty result.

			-- Syntax :
				Select column1,column2,column2 from tbl_name
				Where
					column_name = value1 And column_name = value2

			-- Example :
				Select * from tbl_CategoryMaster
				Where 
					Category_Id = 2 And Category_Name='abc'

				Select * from tbl_CategoryMaster
				Where 
					Category_Id > 2 And Category_Name='Mobile'

		OR :
			If any condition is true then it will return result.

			-- Syntax :
				Select column1,column2,column2 from tbl_name
				Where
					column_name = value1 OR column_name = value2

			-- Example :
				Select * from tbl_CategoryMaster
				Where 
					Category_Id = 2 OR Category_Name='abc' Or Category_Name = 'PC'

		Between :
			It is used to get a value from specific range

			-- Syntax :
				Select column1, column2,column3 from tbl_name
				Where 
					column_name between value1 and value2

			--Example :
				Select * from tbl_CategoryMaster
				where Category_Id between 1 AND 3

		In :
			When we want to add multiple condition in a form of list.

			-- Syntax :
				Select column1, column2, column3 from tbl_name	
				Where column_name in (value1,value2...valueN)

			-- Example :
				Select * from tbl_CategoryMaster
				Where
					Category_Id = 1 OR Category_Id = 2

				Select * from tbl_CategoryMaster
				Where
					Category_Id in (1,2,1002)
		Like :
			Like operator find a value based on pattern.
			Searching criteria : Apple Iphone 15
				Startwith : Ap
				Endwith : 5
				Contains : i

			-- Syntax :
				-- Startwith :
					Select column1, column2 from tbl_name
					Where
						column_name like 'char%'

				-- Endwith :
					Select column1, column2 from tbl_name
					Where
						column_name like '%char'

				-- Contains :
					Select column1, column2 from tbl_name
					Where
						column_name like '%char%'

			-- Example :
				-- Startwith
				Select * from tbl_CategoryMaster
				Where
					Category_Name like 'mb%'

				-- Endwith
				Select * from tbl_CategoryMaster
				Where
					Category_Name like '%e'

				-- Contains
				Select * from tbl_CategoryMaster
				Where
					Category_Name like '%e%'

		Exists :
			When we want to identify the existance of value with subquery or condition.

			-- Syntax :
				Select column1,column2,column3 from tbl_name
				Where exists (subquery)

			-- Example :
				Select * from tbl_CategoryMaster
				where 
					exists (Select Category_Name from tbl_CategoryMaster where Category_Name = 'PC')

		Not :
			Not is display record which is not True.

			-- Example :
				Select * from tbl_CategoryMaster

				Select * from tbl_CategoryMaster
				where Category_Id not between 1 And 4

				-- In Operator
				Select * from tbl_CategoryMaster
				where Category_Id not in (1,2,4)

				-- Like operator
				Select * from tbl_CategoryMaster
				Where Category_Name not like 'm%'
				
		
