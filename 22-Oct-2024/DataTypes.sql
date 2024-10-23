DataTypes :
	We are restricting user to enter value in specific type.
	Datatypes are used while creating table, Variable and parameters.

	Different types of parameters :
		String :
			String is combination of char, Numbers and special characters.
			String is written bentween in single quote('')
			Space is allowed into string.

			-- Example
				'Hello World'
				'Abc@123'

			-- Types of String Datatype:
				varchar
					varchar is not support multiple language script.
					User needs to define a length for the varchar

					-- Example
						varchar(5)

						varchar(max)

					String = 'Hello world' -- Lenght = 11
					string = 'Darshit' -- Length = 7
				nvarchar
					nvarchar support multiple language script.
					User needs to define a length for the nvarchar

					-- Example
						nvarchar(100)

						nvarchar(max)

		Int :
			Int supports numbers only.
			We do not need to specify length.

			-- Types of Int datatype
				Int
					Int is used when we need to save small numbers.
					i.e : Quantity, Price, Marks
				Bigint
					When we need to store numbers with more length than bigint is use.
					i.e: Mobile number, Aadhar number.
		Char :
			It is also storing a string values.
			We need to give length of the char datatype.

			-- Syntax:
				char(n)

			-- Example
				char(10)

				String = 'Hello     ' -- Length = 5
				String  = 'Darshit   ' --Length = 7
		Double :
			Double is consider as a float datatype.
			Double is hold value with point just like decimal.

			-- Syntax
				float(n)

			-- Example :
				v1 = 15.32
				double = 15.21458752

		Decimal :
			Contains value with the point.

			-- Example
				decimal(18,2) -- 132.25
				decimal(18,3) -- 132.250		
		VarBinary
			When we need to encrypt strig into binary form.
			If i need to save binary values.
			We need to define length of varbinary.

			-- Syntax
				varbinary(50)


		DateTime
			When we need to save date and time in the table.

			-- Syntax
				datetime
		Bit :
			Bit supports only 0 and 1.


	Password = 'Password123'
		Frontend algorithm = 'bsudhgf5465d&fnidh@'
		varbinary = '0x767gyg6546'