System Defined Function

	String function :
		When we need to modify or manipulate string.

		Types of string function:
			char :
				Char return ascii value of character.

				-- Syntax :
					Select CHAR('char')

				-- Example :
					Select CHAR(65)
			concat
				Combine two or more than two word into single sentence.

				-- Syntax
					Select CONCAT('expression1','expression2',...)

				-- Example :
					Select CONCAT('Hello ','World') -- HelloWorld  Hello World

					Select CONCAT('Hello ','WelTec ','Institute')
			concat + :
				Combine two or more string using '+'.

				-- Syntax :
					Select expression1 + expression2 +....

				-- Example :
					Select 'Hello ' + 'World'

					Select 'Hello ' + 'WelTec ' + 'Institute'
			concat_ws
				Combine two or more words with given char.

				-- Syntax :
					Select CONCAT_WS(seperator, expression1, expression2...)

				-- Example :
					Select CONCAT_WS('@','Hello','World')

					Select CONCAT_WS(' ','Hello','WelTec','Institute,Vadodara')
					-- Hello WelTec Institute,Vadodara

					Select CONCAT_WS(' ',Subcategory_Name, Subcategory_Name) from tbl_SubcategoryMaster

					Select * from tbl_RegisterUser

					Select CONCAT_WS(' ',Reg_FirstName,Reg_MiddleName,Reg_LastName) 
					from tbl_RegisterUser -- ABC A XYZ

					Select CONCAT(Reg_FirstName,' ',Reg_MiddleName,' ',Reg_LastName) 
					from tbl_RegisterUser -- ABCAXYZ


			len 
				Return length of string of the sentence.

				-- Syntax :
					Select LEN(expression1)

				-- Example
					Select LEN('Hello World')

					Select * from tbl_CategoryMaster					

					Select Category_Id,LEN(Category_Name) as Len_Category_Name, Category_Name 
						from tbl_CategoryMaster
			upper
				Convert string into Upper case

				-- Syntax :
					Select UPPER(expression)

				-- Example :
					Select UPPER('dArSHit')

					Select Category_Id,UPPER(Category_Name) as category_Name,Created_Date 
					from tbl_CategoryMaster
			lower
				Convert string into lower case

				-- Syntax :
					Select LOWER(expression)

				-- Example :
					Select LOWER('dArSHit')

					Select * from tbl_CategoryMaster

					Select Category_Id,lower(Category_Name) as category_Name,Created_Date 
					from tbl_CategoryMaster
			rtrim 
				Remove white space from right side of the string.

				-- Syntax :
					Select RTRIM(expression) from tablename

				-- Example :
					Select RTRIM('  Darshit Kansara   ') as Username
					--   Darshit Kansara

			ltrim
			trim
			replace
			charindex
			
	Date function