CRUD Operation :
	C - Create (Insert)
	R - Read (Select)
	U - Update (Update)
	D - Delete (Delete)

Read (Select) :
	When we want to read a data from existing table we will use select statement.
	We can select data using a column name or asteric (*).
		* gets all column from the table.
		Using column name we can retrieve required column only.

	-- Syntax :
		Select * from table_name

		Select column1,column2,column2,..columnN from table_name

	-- Example :
		Select * from tbl_CategoryMaster

		Select Category_Name, Category_IsDeleted, Category_Id, Category_CreatedDate 
			from tbl_CategoryMaster

Insert (Create) :
	When we want to add new record / data into existing table.

	-- Syntax :
		Insert into tbl_name(column1, column2,column3,..columnN)
		values(value1,value2,value3,...valueN)

	-- Example
		Insert into tbl_CategoryMaster(Category_Id,Category_Name,Category_CreatedDate,Category_IsDeleted)
		values(1,'Mobile','2024-10-24 08:44:01.690',1)

		Insert into tbl_CategoryMaster(Category_Name,Category_CreatedDate,Category_IsDeleted,Category_Id)
		values('Mobile','2024-10-24 08:44:01.690',1,1)

		Insert into tbl_CategoryMaster(Category_Name,Category_IsDeleted)
		values('Tablet',1)

		-- Multiple Insert statement
			-- Syntax :
				Insert into tbl_name(column1, column2,column3)
				values(value1,value1,value1),
					(value2,value2,value2),
					(value3,value3,value3)

				-- Example
					Insert into tbl_CategoryMaster(Category_Id,Category_Name)
					values(3,'AC'),(4,'TV'),(5,'Fridge')

Update :
	When we need to modify the existing data.
	It can be multiple or single data.

	-- Syntax :
		Update tbl_Name set
			column1 = newvalue, column2 = newvalue....columnN = newvalue

	-- Example :
		Select * from tbl_CategoryMaster

		Update tbl_CategoryMaster set
			Category_CreatedDate = '2024-10-29 08:44:01.690'

-- Delete :	
	Delete record from the existing table
	There is no data recover after delete execution.

	-- Syntax :
		Delete from tbl_name

	-- Example :
		Delete from tbl_CategoryMaster