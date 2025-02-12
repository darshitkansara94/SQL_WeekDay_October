Constraint :
	To define rules on table we can use constraints.

	Types of Constraints :
		Primary Key
		Foreign Key

		Not Null
			Allow user to not insert null value.
			We can define using Not Null keyword.

			-- Example :
				Create table tbl_TestTable
				(
					Test_Id int primary key identity(1,1),
					Test_Name nvarchar(50) not null
				)

				-- Add Not Null in existing table
				Alter table tbl_TestTable
				Add Test_Age int not null

				Alter table tbl_TestTable
				Alter column Test_Age int not null

				Select * from tbl_TestTable

				Insert into tbl_TestTable(Test_Name) values('Test1')

		Unique :
			Insert a unique value for every data.
			We can create multiple column with the unique constraint.

			-- Example
			Create table tbl_Test_1
			(
				Test_Id int primary key identity(1,1),
				Test_Name nvarchar(20) unique
			)

			Insert into tbl_Test_1(Test_Name) values('Laptop')

			-- Alter for add unique constraint in table
				-- Syntax
					Alter table tbl_Name
					add constraint cn_Name unique(column_name)

				-- Example
				Alter table tbl_Test_1
				Add Test_MobileNo bigint

				Alter table tbl_Test_1
				Add constraint cn_MobileNo unique(Test_MobileNo)

			-- How to remove unique key
				-- Syntax :
					Alter table tbl_Name
					Drop constraint cn_Name

				-- Example
					Alter table tbl_Test_1
					Drop constraint cn_MobileNo
		Check
			Insert a value into the column based on condition

			Create table tbl_Test2
			(
				Table_Id int primary key identity(1,1),
				Table_Name nvarchar(20),
				Table_Age int,
				constraint cn_Age check(Table_Age >= 18)
			)

			Insert into tbl_Test2(Table_Name,Table_Age)
			values('A',15)

			-- Add existing table
			Alter table tbl_Name
			add constraint cn_Name check (column_name)

			Alter table tbl_Name
			add constraint cn_Name check (column_name1 And column_name2)

			-- Drop constraint
			Alter table tbl_name
			Drop constraint cn_name

		default :
			Use to set a default value if user is noy pass value in to the statement.

			-- Example 
				Create table tbl_Test3
				(
					Test_Id int primary key identity(1,1),
					Test_Name nvarchar(20) default 'string',
					Test_Age int
				)

				Select * from tbl_Test3

				Insert into tbl_Test3(Test_Age) values(16)
				Insert into tbl_Test3(Test_Age,Test_Name) values(16,'abc')

				-- Alter table
				Alter table tbl_name
				add constraint cn_name default 'value' for column_name
