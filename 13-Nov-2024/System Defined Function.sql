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
				Remove whitespace from left side.
				
				-- Syntax :
					Select ltrim(string) from tablename
			trim
				Remove whitespace from left side and right side

				-- Syntax
					Select TRIM(string) from tablename

			-- Apply ltrim,rtrim and trim function on table				

				Select LTRIM(Category_Name) as ltrimName,
					RTRIM(Category_Name) as rtrimname,
					TRIM(Category_Name) as trimname,
					LEN(Category_Name) as lengthName
				from tbl_CategoryMaster
				-- Output
					--ltrim = 'Television   '
					--rtrim = '   Television'
					--trim = 'Television'
			replace
				Replace single char or word in existing string.

				-- Syntax 
					Select REPLACE(expression,expression_to_search,expression_to_replace)

				-- Example
					Select REPLACE('Hello','l','o') as newstring

					-- Replace word
					Select REPLACE('Hello World',UPPER('hello'),UPPER('Bye')) as newstring

					Select REPLACE(Category_Name,'a','b') as replacedstring, Category_Name 
					from tbl_CategoryMaster

					Select REPLACE(Category_Name,Category_Name,TRIM(Category_Name)) as replacedstring, Category_Name 
					from tbl_CategoryMaster

					-- Update value in db
					Update tbl_CategoryMaster 
						set Category_Name = REPLACE(Category_Name,Category_Name,TRIM(Category_Name))

					Select * from tbl_CategoryMaster										


			charindex
				Identify the index for character

				-- Syntax
					Select CHARINDEX('char_to_find_index','string value')

				-- Example :
					 Select charindex(' ','text string')

			Left
				Traverse string from left to right.
				
				-- Syntax :
					Select Left('string Value',Char_count)

				-- Example :
					Select Left('Test String',3)
					Select Left('Test String',5)

			right :
				Traverse string from right to left.

				-- Syntax :
					Select RIGHT('String value', char_count)

				-- Example :
					Select Right('Test String',3) -- ing / gni ?
					Select Right('Test String',5) 

				
			reverse
				Return a string in reverse order.

				-- Sytnax :
					Select REVERSE('String value')

				-- Example :
					Select REVERSE('WelTec is Institute')
			substring :
				Extract the char from string.
				We can assign index / starting point of the string to retrieve.

				-- Syntax :
					Select SUBSTRING('Srting',string_index, no_of_char)

				-- Example :
					Select SUBSTRING('WelTec Institute',2, 3)

-- multiple Concat function in single select statement
	Select CONCAT(Reg_FirstName,Reg_MiddleName,Reg_LastName) as WithConcat,
	Reg_FirstName + Reg_MiddleName + Reg_LastName as WithPlus,
	CONCAT_WS(' ',Reg_FirstName,Reg_MiddleName,Reg_LastName) as WithSeperator
	from tbl_RegisterUser